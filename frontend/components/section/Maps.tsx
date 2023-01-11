import React from 'react';
import { FullscreenControl, GeolocateControl, Map, NavigationControl, ScaleControl } from 'react-map-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const Maps: React.FunctionComponent = () => {
  return (
    <section id='maps'>
      <Map
        initialViewState={{
          longitude: 106.7004238,
          latitude: 10.7756587,
          zoom: 10,
        }}
        mapStyle='mapbox://styles/mapbox/streets-v11'
        mapboxAccessToken={process.env.NEXT_MAP_BOX_ACCESSTOKEN ?? ''}
        style={{
          width: '100%',
          height: '600px',
        }}
      >
        <GeolocateControl position='top-left' />
        <FullscreenControl position='top-left' />
        <NavigationControl position='top-left' />
        <ScaleControl />
      </Map>
    </section>
  );
};

export default Maps;
