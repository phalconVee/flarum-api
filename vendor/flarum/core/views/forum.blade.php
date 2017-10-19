<?php
/**
 * Forum Web App Template
 *
 * NOTE: You shouldn't edit this file directly. Your changes will be overwritten
 * when you update Flarum. See flarum.org/docs/templates to learn how to
 * customize your forum's layout.
 *
 * Flarum's JavaScript app mounts various components into key elements in
 * this template. They are distinguished by their ID attributes:
 *
 * - #app
 * - #app-navigation
 * - #drawer
 * - #header
 * - #header-navigation
 * - #home-link
 * - #header-primary
 * - #header-secondary
 * - #content
 * - #composer
 */
?>
{!! array_get($forum, 'attributes.headerHtml') !!}

<div id="app" class="App">

  <div id="app-navigation" class="App-navigation"></div>

  <div id="drawer" class="App-drawer">

    <header id="header" class="App-header">
      <div id="header-navigation" class="Header-navigation"></div>
      <div class="container">
        <h1 class="Header-title">
          <a href="{{ array_get($forum, 'attributes.baseUrl') }}" id="home-link">
            <?php $title = array_get($forum, 'attributes.title'); ?>
            @if ($logo = array_get($forum, 'attributes.logoUrl'))
              <img src="{{ $logo }}" alt="{{ $title }}" class="Header-logo">
            @else
              {{ $title }}
            @endif
          </a>
        </h1>

        <!-- newly added header links -->
        <div class="Header-primary">
          <ul class="Header-controls">
            <li>
              <a href="{{ array_get($forum, 'attributes.baseUrl') }}" class="Button Button--link">Home</a>
            </li>
            <li>
              <a href="https://www.fint.ng" class="Button Button--link">Borrow</a>
            </li>
            <li>
              <a href="https://www.fint.ng/invest.html" class="Button Button--link">Invest</a>
            </li>
            <li>
              <a href="https://www.fint.ng/team.html" class="Button Button--link" target="_blank">About Us</a></li>
            
          </ul>
          <div id="header-primary"></div>
        </div>
        <!-- end here-->
       
        <!--<div id="header-primary" class="Header-primary"></div>-->
        <div id="header-secondary" class="Header-secondary"></div>
      </div>
    </header>

  </div>

  <main class="App-content">
    <div id="content"></div>

    {!! $content !!}

    <div class="App-composer">
      <div class="container">
        <div id="composer"></div>
      </div>
    </div>
  </main>

</div>
