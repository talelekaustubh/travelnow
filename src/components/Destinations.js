import React from 'react';
import paris from '../images/travellogo.jpg';
function Destinations() {
  const destinations = [
    { name: 'Paris', description: 'The city of lights and love.',image: paris  },
    { name: 'Bali', description: 'Beautiful beaches and temples.' },
    { name: 'Tokyo', description: 'Experience Japan’s vibrant culture.' },
    { name: 'New York', description: 'The city that never sleeps.' },
  ];

  return (
    <section id="destinations" className="destinations">
      <h2>Popular Destinations</h2>
      <div className="destination-list">
        {destinations.map((destination, index) => (
          <div key={index} className="destination">
            <h3>{destination.name}</h3>
            <p>{destination.description}</p>
          </div>
        ))}
      </div>
    </section>
  );
}

export default Destinations;