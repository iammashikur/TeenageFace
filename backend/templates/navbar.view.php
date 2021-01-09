<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
  <a class="navbar-brand" href="#"><?= $_SESSION['user'] ?></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor03">

      <a href="logout.php" class="btn btn-secondary my-2 ml-auto" type="submit">LOGOUT</a>

  </div>
  </div>
</nav>