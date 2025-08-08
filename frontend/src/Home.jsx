import React, { useState } from 'react';

const salones = [
  {
    id: 1,
    nombre: "Salón Fiesta Tropical",
    ubicacion: "Ciudad de México",
    precio: "$1500 / noche",
    imagen: "https://images.unsplash.com/photo-1554995207-c18c203602cb?auto=format&fit=crop&w=800&q=80",
  },
  {
    id: 2,
    nombre: "Espacio Expo Central",
    ubicacion: "Guadalajara",
    precio: "$2000 / día",
    imagen: "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80",
  },
  {
    id: 3,
    nombre: "Sala de Reuniones Ejecutiva",
    ubicacion: "Monterrey",
    precio: "$1000 / hora",
    imagen: "https://images.unsplash.com/photo-1560448073-315a3f9f40f4?auto=format&fit=crop&w=800&q=80",
  },
  {
    id: 4,
    nombre: "Salón Eventos Moderno",
    ubicacion: "Ciudad de México",
    precio: "$1800 / noche",
    imagen: "https://images.unsplash.com/photo-1556911220-e15b29be8c6e?auto=format&fit=crop&w=800&q=80",
  },
];

export default function Home() {
  const [filtro, setFiltro] = useState(null); // para filtro futuro

  return (
    <div className="min-h-screen bg-gradient-to-r from-indigo-900 via-purple-800 to-pink-700 text-white flex flex-col">

      {/* Header */}
      <header className="flex items-center justify-between px-8 py-4 bg-black bg-opacity-30 shadow-md">
        {/* Centro: filtros */}
        <nav className="flex space-x-6 mx-auto max-w-lg">
          <button
            onClick={() => setFiltro('Fiestas')}
            className={`px-4 py-2 rounded-md border transition font-semibold
              ${filtro === 'Fiestas' ? 'bg-white text-purple-700 border-white' : 'border-white hover:bg-white hover:text-purple-700'}`}
          >
            Fiestas
          </button>
          <button
            onClick={() => setFiltro('Exposiciones')}
            className={`px-4 py-2 rounded-md border transition font-semibold
              ${filtro === 'Exposiciones' ? 'bg-white text-purple-700 border-white' : 'border-white hover:bg-white hover:text-purple-700'}`}
          >
            Exposiciones
          </button>
          <button
            onClick={() => setFiltro('Reuniones')}
            className={`px-4 py-2 rounded-md border transition font-semibold
              ${filtro === 'Reuniones' ? 'bg-white text-purple-700 border-white' : 'border-white hover:bg-white hover:text-purple-700'}`}
          >
            Reuniones
          </button>
        </nav>

        {/* Derecha: login y registro */}
        <div className="flex space-x-4">
          <button className="px-4 py-2 rounded-md bg-white text-purple-700 font-semibold hover:bg-purple-100 transition">
            Iniciar sesión
          </button>
          <button className="px-4 py-2 rounded-md border border-white hover:bg-white hover:text-purple-700 transition font-semibold">
            Registrarse
          </button>
        </div>
      </header>

      {/* Contenido principal */}
      <main className="flex flex-col flex-grow items-center px-8 py-10">
        <h1 className="text-5xl font-extrabold mb-8 text-center drop-shadow-lg">
          Reserva tu salón ideal
        </h1>
        <p className="max-w-xl text-center mb-12 text-lg leading-relaxed">
          Encuentra y reserva salones para reuniones o fiestas, de forma rápida, sencilla y segura.
        </p>

        {/* Listado de salones */}
        <section className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8 w-full max-w-7xl">
          {salones
            // Si hay filtro, filtrar por categoría (en este ejemplo simulamos solo por nombre)
            .filter(salon => {
              if (!filtro) return true;
              // Ejemplo simple: filtro en nombre (mejor usar propiedad categoría real)
              return salon.nombre.toLowerCase().includes(filtro.toLowerCase());
            })
            .map(({ id, nombre, ubicacion, precio, imagen }) => (
              <div key={id} className="bg-white bg-opacity-10 rounded-lg shadow-lg overflow-hidden cursor-pointer hover:shadow-2xl transition">
                <img src={imagen} alt={nombre} className="w-full h-48 object-cover" />
                <div className="p-4">
                  <h2 className="text-xl font-semibold mb-1">{nombre}</h2>
                  <p className="text-sm mb-2">{ubicacion}</p>
                  <p className="font-bold">{precio}</p>
                </div>
              </div>
            ))}
        </section>
      </main>

      <footer className="text-center py-4 text-sm bg-black bg-opacity-20 mt-auto">
        &copy; 2025 ReservaSalones. Todos los derechos reservados.
      </footer>
    </div>
  );
}
