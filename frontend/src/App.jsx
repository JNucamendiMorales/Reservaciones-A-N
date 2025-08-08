import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import Menu from './pages/Menu';
// Puedes agregar Login, Register, etc., en el futuro

export default function App() {
  return (
    <div className="p-8 text-2xl bg-indigo-500 text-white">
      Si ves esto con fondo azul y texto grande, Tailwind funciona
    </div>
  );
}
