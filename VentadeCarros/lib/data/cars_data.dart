import '../models/car.dart';

const List<String> carCategories = [
  'Todos',
  'SUV',
  'Sedán',
  'Deportivo',
  'Pickup',
  'Eléctrico',
];

// Datos ficticios. Si alguna imagen no carga, la app muestra un ícono de respaldo.
// Puedes cambiar imageUrl por una ruta local (assets/...) si prefieres Image.asset.
const List<Car> mockCars = [
  Car(
    id: '1',
    brand: 'Toyota',
    name: 'RAV4 Hybrid',
    category: 'SUV',
    year: 2024,
    price: 689900,
    km: 0,
    hp: 219,
    rating: 4.7,
    fuel: 'Híbrido',
    transmission: 'Automática',
    shortDescription: 'SUV familiar, eficiente y espaciosa para ciudad y carretera.',
    description:
        'La RAV4 Hybrid combina un excelente rendimiento de combustible con tracción integral y amplio espacio interior. Incluye pantalla multimedia, cámara de reversa, asistentes de seguridad y cajuela de gran capacidad, ideal para la familia.',
    imageUrl:
        'https://images.unsplash.com/photo-1519641471654-76ce0107ad1b?w=1200',
  ),
  Car(
    id: '2',
    brand: 'Mazda',
    name: 'Mazda3 Sedán',
    category: 'Sedán',
    year: 2023,
    price: 389000,
    km: 18500,
    hp: 186,
    rating: 4.5,
    fuel: 'Gasolina',
    transmission: 'Automática',
    shortDescription: 'Elegante, divertido de manejar y con acabados premium.',
    description:
        'Un sedán de diseño refinado con excelente respuesta de dirección y suspensión equilibrada. Cuenta con interior en piel, sistema de sonido de alta calidad y paquete completo de seguridad activa.',
    imageUrl:
        'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?w=1200',
  ),
  Car(
    id: '3',
    brand: 'Ford',
    name: 'Mustang GT',
    category: 'Deportivo',
    year: 2022,
    price: 1149000,
    km: 12000,
    hp: 450,
    rating: 4.9,
    fuel: 'Gasolina',
    transmission: 'Manual',
    shortDescription: 'Motor V8 y carácter de muscle car clásico.',
    description:
        'El Mustang GT ofrece un motor V8 de 5.0 litros con un sonido inconfundible y una potencia impresionante. Incluye modos de manejo, frenos deportivos y asientos de alto soporte.',
    imageUrl:
        'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?w=1200',
  ),
  Car(
    id: '4',
    brand: 'Chevrolet',
    name: 'Silverado 2500',
    category: 'Pickup',
    year: 2023,
    price: 985000,
    km: 9500,
    hp: 355,
    rating: 4.6,
    fuel: 'Gasolina',
    transmission: 'Automática',
    shortDescription: 'Pickup de trabajo pesado con gran capacidad de carga.',
    description:
        'Diseñada para el trabajo exigente, ofrece alta capacidad de remolque, caja resistente y una cabina cómoda con tecnología moderna. Ideal para uso comercial o aventura.',
    imageUrl:
        'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=1200',
  ),
  Car(
    id: '5',
    brand: 'Tesla',
    name: 'Model 3',
    category: 'Eléctrico',
    year: 2024,
    price: 849000,
    km: 0,
    hp: 283,
    rating: 4.8,
    fuel: 'Eléctrico',
    transmission: 'Automática',
    shortDescription: 'Eléctrico con gran autonomía y tecnología de punta.',
    description:
        'Más de 500 km de autonomía, aceleración instantánea y actualizaciones de software por aire. Interior minimalista con pantalla central y conducción asistida avanzada.',
    imageUrl:
        'https://images.unsplash.com/photo-1560958089-b8a1929cea89?w=1200',
  ),
  Car(
    id: '6',
    brand: 'BMW',
    name: 'Serie 3 330i',
    category: 'Sedán',
    year: 2022,
    price: 759000,
    km: 24000,
    hp: 255,
    rating: 4.7,
    fuel: 'Gasolina',
    transmission: 'Automática',
    shortDescription: 'Sedán premium con manejo deportivo y lujo.',
    description:
        'El equilibrio perfecto entre confort y dinamismo. Motor turbo, tracción trasera, interior de lujo y tecnología BMW iDrive con asistentes de conducción.',
    imageUrl:
        'https://images.unsplash.com/photo-1555215695-3004980ad54e?w=1200',
  ),
  Car(
    id: '7',
    brand: 'Porsche',
    name: '911 Carrera',
    category: 'Deportivo',
    year: 2021,
    price: 2450000,
    km: 15000,
    hp: 379,
    rating: 5.0,
    fuel: 'Gasolina',
    transmission: 'Automática',
    shortDescription: 'Ícono deportivo con desempeño de pista.',
    description:
        'Un clásico moderno: motor bóxer trasero, manejo preciso y diseño atemporal. Perfecto para quienes buscan emoción y exclusividad en cada trayecto.',
    imageUrl:
        'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=1200',
  ),
  Car(
    id: '8',
    brand: 'Honda',
    name: 'CR-V Touring',
    category: 'SUV',
    year: 2023,
    price: 618000,
    km: 21000,
    hp: 190,
    rating: 4.4,
    fuel: 'Gasolina',
    transmission: 'Automática',
    shortDescription: 'Confiable, cómoda y con mucho espacio interior.',
    description:
        'SUV muy valorada por su confiabilidad y reventa. Ofrece techo panorámico, asientos de piel, tercera fila opcional y el paquete Honda Sensing de seguridad.',
    imageUrl:
        'https://images.unsplash.com/photo-1568844293986-8d0400bd4745?w=1200',
  ),
];
