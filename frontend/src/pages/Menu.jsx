import React, { useEffect, useState } from 'react';

export default function Menu() {
  const [salones, setSalones] = useState([]);

  useEffect(() => {
    fetch('http://localhost:8000/api/salones_recomendados/') // URL de tu API
      .then(response => response.json())
      .then(data => setSalones(data))
      .catch(error => console.error('Error al obtener salones:', error));
  }, []);

  return (
    <div className="p-6">
      <h1 className="text-3xl font-bold mb-6">Salones recomendados</h1>
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {salones.map(salon => (
          <div key={salon.id} className="border rounded p-4 shadow bg-white">
            <h2 className="text-xl font-semibold">{salon.nombre}</h2>
            <p>{salon.descripcion}</p>
            <p className="text-sm text-gray-500">{salon.ubicacion}</p>
          </div>
        ))}
      </div>
    </div>
  );
}
