<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
        <link rel="stylesheet" href="<c:url value='/assets/css/styles.css'/>">
        <link rel="stylesheet" href="<c:url value='/assets/css/output.css'/>">
        <title>MaxWheels</title>
    </head>

    <body>
        <header class="header">
            <div id="menu-btn" class="fas fa-bars"></div>
            <a href="#" class="logo"><span>Max</span>Wheels</a>
            <nav class="navbar">
                <a href="#home" class="">Home</a>
                <a href="#vehicles" class="">Vehicles</a>
                <a href="#services" class="">Services</a>
                <a href="#featured" class="">Features</a>
                <a href="#reviews" class="">Reviews</a>
                <a href="#contact" class="">Contacts</a>
            </nav>
            <div id="login-btn">
                <button class="btn" onclick="window.location.href='${pageContext.request.contextPath}/auth/login'">Login</button>
                <i class="far fa-user"></i>
            </div>
        </header>
        <section class="home" id="home">
            <h1 class="home-parallax" data-speed="-2">Your new car is here</h1>
            <img class="home-parallax" data-speed="5" src="<c:url value='/assets/images/home-img.png'/>" alt="home image">
            <a href="" class="btn home-parallax" data-speed="7s">Learn More</a>
        </section>
        <section class="icons-container">
            <div class="icons">
                <i class="fas fa-home"></i>
                <div class="content">
                    <h3>+150</h3>
                    <p>Stores across Brazil</p>
                </div>
            </div>
            <div class="icons">
                <i class="fas fa-car"></i>
                <div class="content">
                    <h3>+4770</h3>
                    <p>Monthly sales</p>
                </div>
            </div>
            <div class="icons">
                <i class="fas fa-user"></i>
                <div class="content">
                    <h3>+100.000</h3>
                    <p>Satisfied customers</p>
                </div>
            </div>
            <div class="icons">
                <i class="fas fa-car"></i>
                <div class="content">
                    <h3>+890</h3>
                    <p>New vehicles</p>
                </div>
            </div>
        </section>
        <section class="vehicles" id="vehicles">
            <h1 class="heading"><span>Vehicles</span> Popular</h1>
            <div class="swiper vehicles-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide box">
                        <img src="assets/images/vehicle-1.png" alt="vehicle-1">
                        <div class="content">
                            <h3>New model</h3>
                            <div class="price">
                                <span>Price:</span> $ 120.000,00
                            </div>
                            <p>
                                Novo
                                <i class="fas fa-circle"></i> 2022
                                <i class="fas fa-circle"></i> Automation
                                <i class="fas fa-circle"></i> Gasoline
                                <i class="fas fa-circle"></i> 260 km/h
                            </p>
                            <a href="#" class="btn">ver mais</a>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/vehicle-2.png" alt="vehicle-2">
                        <div class="content">
                            <h3>New model</h3>
                            <div class="price">
                                <span>Price:</span> $ 120.000,00
                            </div>
                            <p>
                                Novo
                                <i class="fas fa-circle"></i> 2022
                                <i class="fas fa-circle"></i> Automation
                                <i class="fas fa-circle"></i> Gasoline
                                <i class="fas fa-circle"></i> 260 km/h
                            </p>
                            <a href="#" class="btn">see more</a>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/vehicle-3.png" alt="vehicle-3">
                        <div class="content">
                            <h3>New model</h3>
                            <div class="price">
                                <span>Price:</span> $ 120.000,00
                            </div>
                            <p>
                                Novo
                                <i class="fas fa-circle"></i> 2022
                                <i class="fas fa-circle"></i> Automation
                                <i class="fas fa-circle"></i> Gasoline
                                <i class="fas fa-circle"></i> 260 km/h
                            </p>
                            <a href="#" class="btn">see more</a>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/vehicle-4.png" alt="vehicle-4">
                        <div class="content">
                            <h3>New model</h3>
                            <div class="price">
                                <span>Price:</span> $ 120.000,00
                            </div>
                            <p>
                                New
                                <i class="fas fa-circle"></i> 2022
                                <i class="fas fa-circle"></i> Automation
                                <i class="fas fa-circle"></i> Gasoline
                                <i class="fas fa-circle"></i> 260 km/h
                            </p>
                            <a href="#" class="btn">see more</a>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/vehicle-5.png" alt="vehicle-5">
                        <div class="content">
                            <h3>New model</h3>
                            <div class="price">
                                <span>Price:</span> $ 120.000,00
                            </div>
                            <p> New
                                <i class="fas fa-circle"></i> 2022
                                <i class="fas fa-circle"></i> Automation
                                <i class="fas fa-circle"></i> Gasoline
                                <i class="fas fa-circle"></i> 260 km/h
                            </p>
                            <a href="#" class="btn">see more</a>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/vehicle-6.png" alt="vehicle-6">
                        <div class="content">
                            <h3>New model</h3>
                            <div class="price">
                                <span>Price:</span> $ 120.000,00
                            </div>
                            <p>
                                New
                                <i class="fas fa-circle"></i> 2022
                                <i class="fas fa-circle"></i> Automation
                                <i class="fas fa-circle"></i> Gasoline
                                <i class="fas fa-circle"></i> 260 km/h
                            </p>
                            <a href="#" class="btn">see more</a>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </section>
        <section class="services" id="services">
            <h1 class="heading">Our <span>Service</span></h1>
            <div class="box-container">
                <div class="box">
                    <i class="fas fa-car"></i>
                    <h3>Melhores Carros</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, debitis!</p>
                    <a href="#" class="btn">Saiba Mais</a>
                </div>
                <div class="box">
                    <i class="fas fa-tools"></i>
                    <h3>Reparo Garantido</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, debitis!</p>
                    <a href="#" class="btn">Saiba Mais</a>
                </div>
                <div class="box">
                    <i class="fas fa-car-crash"></i>
                    <h3>Seguro Automotivo</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, debitis!</p>
                    <a href="#" class="btn">Saiba Mais</a>
                </div>
                <div class="box">
                    <i class="fas fa-car-battery"></i>
                    <h3>Troca de bateria</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, debitis!</p>
                    <a href="#" class="btn">Saiba Mais</a>
                </div>
                <div class="box">
                    <i class="fas fa-gas-pump"></i>
                    <h3>Troca de �leo</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, debitis!</p>
                    <a href="#" class="btn">Saiba Mais</a>
                </div>
                <div class="box">
                    <i class="fas fa-headset"></i>
                    <h3>Suporte Online 24h</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium, debitis!</p>
                    <a href="#" class="btn">Saiba Mais</a>
                </div>
            </div>
        </section>
        <section class="featured" id="featured">
            <h1 class="heading"><span>Novidades</span></h1>
            <div class="swiper featured-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide box">
                        <img src="assets/images/car-1.png" alt="featured 1">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="price">R$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/car-2.png" alt="featured 2">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="price">R$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/car-3.png" alt="featured 3">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="price">R$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/car-4.png" alt="featured 4">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="price">R$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="swiper featured-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide box">
                        <img src="assets/images/car-5.png" alt="featured 5">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="price">$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/car-6.png" alt="featured 6">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="swiper-slide price">$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/car-7.png" alt="featured 7">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="price">$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/car-8.png" alt="featured 8">
                        <h3>Novo Modelo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="price">$ 300,000</div>
                        <a href="#" class="btn">Ver</a>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </section>
        <section class="newsletter">
            <h3>Assine nossa newsletter para ficar por dentro das noviades </h3>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quia, vel?</p>
            <form action="#" method="post">
                <input type="email" placeholder="E-mail">
                <input type="submit" value="Inscrever">
            </form>
        </section>
        <section class="reviews" id="reviews">
            <h1 class="heading">Opini�o dos <span>Clientes</span></h1>
            <div class="swiper reviews-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide box">
                        <img src="assets/images/pic-1.png" alt=" customer 1">
                        <div class="content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam corporis non nobis
                                voluptate, dolorum ipsum voluptatem provident voluptatum doloremque?
                            </p>
                            <h3>Jo�o da Silva</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/pic-2.png" alt=" customer  2">
                        <div class="content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam corporis non nobis
                                voluptate, dolorum ipsum voluptatem provident voluptatum doloremque?
                            </p>
                            <h3>Maria da silva</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/pic-3.png" alt=" customer  3">
                        <div class="content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam corporis non nobis
                                voluptate, dolorum ipsum voluptatem provident voluptatum doloremque?
                            </p>
                            <h3>Henrique Santos</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/pic-4.png" alt=" customer  4">
                        <div class="content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam corporis non nobis
                                voluptate, dolorum ipsum voluptatem provident voluptatum doloremque?
                            </p>
                            <h3>Marcia de Souza</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/pic-5.png" alt=" customer  5">
                        <div class="content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam corporis non nobis
                                voluptate, dolorum ipsum voluptatem provident voluptatum doloremque?
                            </p>
                            <h3>Ricardo Oliveira</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide box">
                        <img src="assets/images/pic-6.png" alt=" customer  6">
                        <div class="content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam corporis non nobis
                                voluptate, dolorum ipsum voluptatem provident voluptatum doloremque?
                            </p>
                            <h3>Lorena D'avila</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </section>
        <section class="contact" id="contact">
            <h1 class="heading"> <span>Contato</span></h1>
            <div class="row">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3601.3293945871096!2d-49.27547518542597!3d-25.494058783758895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94dcfb54848a661f%3A0x20b1cf2e0071c094!2sAuto%20Shopping%20Paran%C3%A1!5e0!3m2!1spt-BR!2sbr!4v1664634143424!5m2!1spt-BR!2sbr"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" class="map"
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>
                <form action="" method="post">
                    <h3>Entre em contato conosco</h3>
                    <input type="text" placeholder="Nome" class="box">
                    <input type="email" name="" placeholder="E-mail" class="box">
                    <input type="number" name="" placeholder="Telefone" class="box">
                    <textarea name="" placeholder="mensagem" class="box" cols="30" rows="10"></textarea>
                    <input type="submit" value="enviar" class="btn">
                </form>
            </div>
        </section>
        <footer class="footer">
            <div class="box-container">
                <div class="box">
                    <h3>Nossas Filiais</h3>
                    <a href=""><i class="fas fa-map-marker-alt"></i>Florian�pils</a>
                    <a href=""><i class="fas fa-map-marker-alt"></i>Porto Alegre</a>
                    <a href=""><i class="fas fa-map-marker-alt"></i>Recife</a>
                    <a href=""><i class="fas fa-map-marker-alt"></i>S�o Paulo</a>
                    <a href=""><i class="fas fa-map-marker-alt"></i>Cascavel</a>
                </div>
                <div class="box">
                    <h3>Navega��o r�pida</h3>
                    <a href="#home" class=""><i class="fas fa-arrow-right"></i>Home</a>
                    <a href="#vehicles" class=""><i class="fas fa-arrow-right"></i>Ve�culos</a>
                    <a href="#services" class=""><i class="fas fa-arrow-right"></i>Servi�os</a>
                    <a href="#featured" class=""><i class="fas fa-arrow-right"></i>Novidades</a>
                    <a href="#reviews" class=""><i class="fas fa-arrow-right"></i>Avalia��es</a>
                    <a href="#contact" class=""><i class="fas fa-arrow-right"></i>Contato</a>
                </div>
                <div class="box">
                    <h3>Informa��es de contato</h3>
                    <a href="#"><i class="fas fa-phone"></i>(41) 3233-2504</a>
                    <a href="#"><i class="fa-brands fa-whatsapp"></i>(41) 99541-2014</a>
                    <a href=""><i class="fas fa-envelope"></i>maiphuhai123@gmail.com</a>
                    <a href=""><i class="fa-solid fa-map-location-dot"></i> BR-116, 15625 - Xaxim, Curitiba - PR</a>
                </div>
                <div class="box">
                    <h3>Nossas Redes Sociais</h3>
                    <a href=""><i class="fab fa-facebook-f"></i>Facebook</a>
                    <a href=""><i class="fab fa-twitter"></i>Twitter</a>
                    <a href=""><i class="fab fa-instagram"></i>Instagram</a>
                    <a href=""><i class="fab fa-linkedin"></i>Linkedin</a>
                    <a href=""><i class="fab fa-pinterest"></i>Pinterest</a>
                </div>
            </div>
            <div class="credit"> Criado por <span>Diego Vilhalva</span> | Todos os direitos reservados.</div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>
</html>