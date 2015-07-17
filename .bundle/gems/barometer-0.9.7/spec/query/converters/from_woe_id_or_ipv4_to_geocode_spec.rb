require_relative '../../spec_helper'

module Barometer::Query
  describe Converter::FromWoeIdOrIpv4ToGeocode, vcr: {
    match_requests_on: [:method, :uri],
    cassette_name: 'Converter::FromWoeIdOrIpv4ToGeocode'
  } do
    describe '.call' do
      it 'converts :woe_id -> :geocode' do
        query = Barometer::Query.new('615702')

        converter = Converter::FromWoeIdOrIpv4ToGeocode.new(query)
        converted_query = converter.call

        expect( converted_query.q ).to eq 'Paris, Ile-de-France, France'
        expect( converted_query.format ).to eq :geocode
        expect( converted_query.geo ).not_to be_nil
      end

      it 'uses a previous :woe_id coversion (if needed) on the query' do
        query = Barometer::Query.new('40.697488,-73.979681')
        query.add_conversion(:woe_id, '615702')

        converter = Converter::FromWoeIdOrIpv4ToGeocode.new(query)
        converted_query = converter.call

        expect( converted_query.q ).to eq 'Paris, Ile-de-France, France'
        expect( converted_query.format ).to eq :geocode
        expect( converted_query.geo ).not_to be_nil
      end

      it 'converts :ipv4_address -> :geocode' do
        query = Barometer::Query.new('8.8.8.8')

        converter = Converter::FromWoeIdOrIpv4ToGeocode.new(query)
        converted_query = converter.call

        expect( converted_query.q ).to eq 'Mountain View, CA, United States'
        expect( converted_query.format ).to eq :geocode
        expect( converted_query.geo ).not_to be_nil
      end

      it 'does not convert any other format' do
        query = Barometer::Query.new('90210')

        converter = Converter::FromWoeIdOrIpv4ToGeocode.new(query)
        expect( converter.call ).to be_nil
      end
    end
  end
end
