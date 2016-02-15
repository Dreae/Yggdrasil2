<dashboard>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
    <header class="mdl-layout__header">
      <div class="mdl-layout__header-row">
        <div class="mdl-layout-spacer"></div>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right">
          <label class="mdl-button mdl-js-button mdl-button--icon" for="fixed-header-drawer-exp">
            <i class="material-icons">search</i>
          </label>
          <div class="mdl-textfield__expandable-holder">
            <input class="mdl-textfield__input" type="text" name="sample" id="fixed-header-drawer-exp">
          </div>
        </div>
      </div>
    </header>
    <div class="mdl-layout__drawer">
      <span class="mdl-layout-title">Yggdrasil</span>
      <nav class="mdl-navigation">
        <a class="mdl-navigation__link" href="">Dashboard</a>
        <a class="mdl-navigation__link" href="">Servers</a>
        <a class="mdl-navigation__link" href="">Users</a>
      </nav>
    </div>
    <main class="mdl-layout__content">
      <div class="page-content"><!-- Your content goes here --></div>
    </main>
  </div>
  <script>
    import api from "../js/api.js";

    api.get_session().then(function(session) {

    }, function(err) {
      console.debug("Unable to get session, redirecting to login");
      riot.route("login");
    });
  </script>
</dashboard>
