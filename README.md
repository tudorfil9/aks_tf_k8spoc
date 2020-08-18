
The app will be running at [http://localhost:5000](http://localhost:5000), and the results will be at [http://localhost:5001](http://localhost:5001).

Architecture
-----

![Architecture diagram](architecture.png)

* A Python webapp which lets you vote between two options
* A Redis queue which collects new votes
* A Java worker which consumes votes and stores them in…
* A Postgres database backed by a Docker volume
* A Node.js webapp which shows the results of the voting in real time


<h1>Semantically marked-up ASCII art tree structure</h1>
<h2>ASCII art</h2>
<pre>
bootstrap/
├── css/
│   ├── bootstrap.css
│   ├── bootstrap.min.css
│   ├── bootstrap-theme.css
│   └── bootstrap-theme.min.css
├── js/
│   ├── bootstrap.js
│   └── bootstrap.min.js
└── fonts/
    ├── glyphicons-halflings-regular.eot
    ├── glyphicons-halflings-regular.svg
    ├── glyphicons-halflings-regular.ttf
    └── glyphicons-halflings-regular.woff

bootstrap/
├── less/
├── js/
├── fonts/
├── dist/
│   ├── css/
│   ├── js/
│   └── fonts/
└── docs/
    └── examples/
</pre>
<h2>Styled nested lists</h2>
<div>
<ul class="ascii">
<li>bootstrap/
  <ul>
    <li>css/
      <ul>
        <li>bootstrap.css</li>
        <li>bootstrap.min.css</li>
        <li>bootstrap-theme.css</li>
        <li>bootstrap-theme.min.css</li>
      </ul>
    </li>
    <li>js/
      <ul>
        <li>bootstrap.js</li>
        <li>bootstrap.min.js</li>
      </ul>
    </li>
    <li>fonts/
      <ul>
        <li>glyphicons-halflings-regular.eot</li>
        <li>glyphicons-halflings-regular.svg</li>
        <li>glyphicons-halflings-regular.ttf</li>
        <li>glyphicons-halflings-regular.woff</li>
      </ul>
    </li>
  </ul>
</li>
</ul>

<ul class="ascii">
<li>bootstrap/
  <ul>
    <li>less/</li>
    <li>js/</li>
    <li>fonts/</li>
    <li>dist/
      <ul>
        <li>css/</li>
        <li>js/</li>
        <li>fonts/</li>
      </ul>
    </li>
    <li>docs/
      <ul>
        <li>examples/</li>
      </ul>
    </li>
  </ul>
</li>
</ul>

<h2>Six levels deep...</h2>
<ul class="ascii">
  <li>one
    <ul>
      <li>two
        <ul>
          <li>three
            <ul>
              <li>four
                <ul>
                  <li>five
                    <ul>
                      <li>six</li>
                    </ul>
                  </li>
                  <li>foo</li>
                </ul>
              </li>
              <li>bar</li>
            </ul>
          </li>
        </ul>
      </li>
      <li>baz</li>
    </ul>
  </li>
</ul>
  
</div>