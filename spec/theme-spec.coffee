describe "Threshold UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('threshold-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('threshold-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('threshold-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-threshold-ui-layoutmode')).toBe 'auto'

    atom.config.set('threshold-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-threshold-ui-layoutmode')).toBe 'spacious'

  it "allows the tab sizing to be set via config", ->
    expect(document.documentElement.getAttribute('theme-threshold-ui-tabsizing')).toBe 'auto'

    atom.config.set('threshold-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-threshold-ui-tabsizing')).toBe 'minimum'
