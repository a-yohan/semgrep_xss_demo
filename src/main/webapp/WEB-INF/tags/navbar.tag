<%@tag description="Navbar" pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand navbar-light bg-light px-4">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
            data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/">Dashboard</a>
                </li>
            </ul>
            <form action="/user" method="get" class="d-flex input-group w-auto">
                <input name="q" type="search" class="form-control rounded" placeholder="Search"
                    aria-label="Search" aria-describedby="search-addon" />
                <button type="submit" class="input-group-text border-0" id="search-addon">
                    <i class="fas fa-search"></i>
                </button>
            </form>
        </div>

        <div class="d-flex align-items-center mx-5"></div>
    </div>
</nav>