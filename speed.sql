-- Categorías para productos o recursos en HealthMood
INSERT INTO categories (name) VALUES
('Gatos'),              -- Productos para bienestar de mascotas (si aplica en el enfoque emocional)
('Perros'),             -- Ídem
('Alimento Saludable'), -- Snacks, suplementos, etc.
('Accesorios de Bienestar'), -- Difusores, mantas, botellas, etc.
('Salud e Higiene Personal'); -- Jabones, cremas, productos de autocuidado


INSERT INTO products (name, description, price, category_id) VALUES
('Difusor de Aromaterapia', 'Relaja el ambiente con aceites esenciales.', 15990, 1),
('Kit de Snacks Saludables', 'Mix de frutos secos y barritas sin azúcar.', 8990, 2),
('Shampoo Natural Antiestrés', 'Con romero y menta para revitalizar.', 6990, 3),
('Juguete interactivo para gatos', 'Estimula el juego y reduce el estrés.', 4990, 4),
('Collar calmante para perros', 'Feromonas naturales para reducir ansiedad.', 7990, 5);

INSERT INTO customers (first_name, last_name, phone, email, street, city, state, zip_code) VALUES
('Camila', 'Rojas', '912345678', 'camila.rojas@email.com', 'Av. Siempre Viva 123', 'Santiago', 'RM', '8320000'),
('Luis', 'Alvarado', '987654321', 'luis.alvarado@email.com', 'Calle Falsa 456', 'Maipú', 'RM', '9250000'),
('Natalie', 'Duchens', '956789012', 'natalie.duchens@email.com', 'Pasaje Azul 789', 'La Florida', 'RM', '8240000'),
('Carlos', 'Peña', '934567890', 'carlos.pena@email.com', 'Camino Verde 321', 'Ñuñoa', 'RM', '7750000'),
('Constanza', 'Valenzuela', '945678901', 'constanza.valenzuela@email.com', 'Av. del Sol 654', 'Providencia', 'RM', '7500000');


INSERT INTO orders (customer_id, order_status, order_date, required_date, shipped_date) VALUES
(1, 'Procesando', '2025-07-29', '2025-08-01', NULL),
(2, 'Enviado', '2025-07-28', '2025-07-30', '2025-07-29'),
(3, 'Completado', '2025-07-27', '2025-07-29', '2025-07-28'),
(4, 'Cancelado', '2025-07-26', '2025-07-28', NULL),
(5, 'Procesando', '2025-07-29', '2025-08-02', NULL);


INSERT INTO order_items (order_id, product_id, quantity, list_price, discount) VALUES
(1, 1, 1, 15990, 0),
(2, 2, 2, 8990, 0.1),
(3, 3, 1, 6990, 0),
(3, 4, 1, 4990, 0),
(5, 5, 1, 7990, 0.05);


INSERT INTO payments (customer_id, order_id, payment_date, amount) VALUES
(2, 2, '2025-07-29', 16182),
(3, 3, '2025-07-28', 11980),
(4, 4, '2025-07-27', 0),
(5, 5, '2025-07-29', 7590.5),
(1, 1, '2025-07-29', 15990);


INSERT INTO cart (customer_id) VALUES
(1), (2), (3), (4), (5);


INSERT INTO cart_items (cart_id, product_id, quantity) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 1, 1),
(4, 5, 1),
(5, 4, 3);


INSERT INTO posts (title, content, author, published_date) VALUES
('Cómo crear una rutina de autocuidado', 'Explora hábitos diarios para mejorar tu bienestar.', 'Camila Rojas', '2025-07-28'),
('Beneficios de la aromaterapia', 'Descubre cómo los aromas influyen en tu estado emocional.', 'Luis Alvarado', '2025-07-27'),
('Snacks saludables para el estrés', 'Ideas rápidas y nutritivas para tus pausas.', 'Natalie Duchens', '2025-07-26'),
('Mascotas y salud mental', 'Cómo los animales pueden mejorar tu ánimo.', 'Carlos Peña', '2025-07-25'),
('Productos naturales para el cuerpo', 'Evita químicos y mejora tu salud con opciones naturales.', 'Constanza Valenzuela', '2025-07-24');


INSERT INTO comments (post_id, customer_id, comment_text) VALUES
(1, 1, 'Me encantó esta rutina, la voy a probar.'),
(2, 2, 'Uso difusores y realmente ayudan.'),
(3, 3, 'Gracias por las ideas de snacks.'),
(4, 4, 'Mi gato me ha ayudado mucho emocionalmente.'),
(5, 5, 'Muy útil, gracias por compartir.');


INSERT INTO contact_messages (name, email, subject, message) VALUES
('Camila Rojas', 'camila.rojas@email.com', 'Consulta sobre productos', '¿Tienen más opciones de aromaterapia?'),
('Luis Alvarado', 'luis.alvarado@email.com', 'Problema con pedido', 'Mi pedido no ha llegado aún.'),
('Natalie Duchens', 'natalie.duchens@email.com', 'Sugerencia', 'Podrían incluir más snacks veganos.'),
('Carlos Peña', 'carlos.pena@email.com', 'Felicitaciones', 'Me encanta el enfoque emocional del sitio.'),
('Constanza Valenzuela', 'constanza.valenzuela@email.com', 'Error en pago', 'Tuve problemas al pagar con tarjeta.');

INSERT INTO chatbot_logs (customer_id, message, response) VALUES
(1, '¿Qué productos ayudan a dormir mejor?', 'Puedes probar el difusor con lavanda.'),
(2, '¿Dónde está mi pedido?', 'Tu pedido fue enviado el 28 de julio.'),
(3, '¿Tienen productos sin azúcar?', 'Sí, revisa el kit de snacks saludables.'),
(4, '¿Cómo puedo contactar al equipo?', 'Puedes usar el formulario de contacto.'),
(5, '¿Qué beneficios tiene el shampoo natural?', 'Ayuda a reducir el estrés y revitaliza el cuero cabelludo.');


/* el de chatbot me genera dudas, y el de comentarios del blog igual.*/
/* ACA DEJO MAS PRODUCTOS POR CATEGORÍA */
/*Accesorios de Bienestar*/
INSERT INTO products (name, description, price, category_id) VALUES
('Difusor de Aromaterapia', 'Relaja el ambiente con aceites esenciales.', 15990, 1),
('Manta con peso terapéutico', 'Reduce ansiedad y mejora el sueño.', 24990, 1),
('Botella motivacional', 'Con frases para fomentar hidratación consciente.', 7990, 1),
('Lámpara de luz cálida', 'Ideal para crear ambientes relajantes.', 12990, 1),
('Set de yoga básico', 'Incluye mat, bloques y correa para estiramientos.', 19990, 1);
-------------------------------------------------------------
/* ALIMENTO SALUDABLE */
INSERT INTO products (name, description, price, category_id) VALUES
('Kit de Snacks Saludables', 'Mix de frutos secos y barritas sin azúcar.', 8990, 2),
('Té relajante de hierbas', 'Infusión natural para reducir el estrés.', 4990, 2),
('Smoothie vegano en polvo', 'Fórmula rica en nutrientes y sin azúcar.', 10990, 2),
('Galletas sin gluten', 'Con avena y semillas, ideal para colaciones.', 5990, 2),
('Mix de superalimentos', 'Chía, linaza, maca y cacao para batidos.', 7990, 2);
-------------------------------------------------------------
/* SALUD E HIGIENE PERSONAL */  
INSERT INTO products (name, description, price, category_id) VALUES
('Shampoo Natural Antiestrés', 'Con romero y menta para revitalizar.', 6990, 3),
('Jabón de avena y lavanda', 'Suave con la piel, ideal para duchas relajantes.', 4990, 3),
('Crema corporal calmante', 'Con aloe vera y manzanilla.', 8990, 3),
('Aceite esencial de eucalipto', 'Para masajes o difusores.', 5990, 3),
('Desodorante natural sin aluminio', 'Protección suave y libre de químicos.', 6990, 3);
-------------------------------------------------------------
/* GATOS */
INSERT INTO products (name, description, price, category_id) VALUES
('Juguete interactivo para gatos', 'Estimula el juego y reduce el estrés.', 4990, 4),
('Rascador con catnip', 'Ayuda a liberar energía y relajar.', 7990, 4),
('Cama suave antiestrés', 'Diseñada para descanso profundo.', 12990, 4),
('Snacks naturales para gatos', 'Sin aditivos, ideal para premiar.', 3990, 4),
('Collar con cascabel relajante', 'Diseño liviano y sonido suave.', 2990, 4);
-------------------------------------------------------------
/* PERROS */
INSERT INTO products (name, description, price, category_id) VALUES
('Collar calmante para perros', 'Feromonas naturales para reducir ansiedad.', 7990, 5),
('Pelota con aroma relajante', 'Estimula el juego y calma.', 4990, 5),
('Cama ortopédica', 'Ideal para perros mayores o con ansiedad.', 19990, 5),
('Snacks funcionales antiestrés', 'Con manzanilla y triptófano.', 5990, 5),
('Shampoo relajante para perros', 'Con lavanda y avena.', 6990, 5);
-------------------------------------------------------------
-- Fin de las inserciones de productos y categorías 