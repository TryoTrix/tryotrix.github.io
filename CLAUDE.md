# CLAUDE.md - Projektkontext für SEO Agentur Website

## Projektübersicht

**Website:** https://tryotrix.github.io
**Inhaber:** Daniel Gächter
**Geschäft:** SEO Agentur Schweiz
**Adresse:** Oberstadtstrasse 9, 8500 Frauenfeld, Schweiz
**Telefon:** 076 281 85 82 (obfuskiert im Code)

## Design-System: Dark Glass HUD

Das Design basiert auf einem futuristischen "Dark Glass HUD" Theme:

### Farben (CSS Variables)
- `--bg-dark: #0a0a0f` - Hintergrund
- `--neon-cyan: #00f0ff` - Primär-Akzent
- `--neon-magenta: #ff00aa` - Sekundär-Akzent
- `--neon-gold: #ffaa00` - Highlight (Rang #1, Preise)
- `--text-primary: #e0e0e0` - Haupttext
- `--text-secondary: #808090` - Sekundärtext

### Fonts
- **Orbitron** - Headlines (futuristisch)
- **JetBrains Mono** - Code/Mono-Text
- **Inter** - Body-Text

### Komponenten
- `.glass-panel` - Glasmorphism-Karten mit Blur
- `.hud-brackets` - Cyan Eck-Brackets Animation
- `.glow-card` - Mouse-Follow Glow-Effekt
- `.ranking-badge` - Rang-Badges (.rank-1, .top-3, .page-1, .in-progress)

## Dateistruktur

```
├── index.html          # Hauptseite
├── impressum.html      # Impressum (noindex)
├── datenschutz.html    # Datenschutz (noindex)
├── styles.css          # Alle Styles
├── favicon.ico         # Favicon
├── og-image.jpg        # Open Graph Bild (1200x630)
├── og-template.html    # Template zum OG-Bild erstellen
├── happy.webp          # Icon für Freizeit-Vergleich-Schweiz
├── sitemap.xml         # Sitemap für Google
├── robots.txt          # Crawler-Regeln
└── CLAUDE.md           # Diese Datei
```

## SEO-Projekte (Karten)

### Lotus Academy (6 Karten)
1. **Beste Nachhilfe Schweiz** - Rang #1
2. **Nachhilfe Münchwilen** - Rang #1
3. **Nachhilfe Preise/Kosten** - Rang #1
4. **Nachhilfe Wil** - Top 3
5. **Nachhilfe Winterthur** - Top 3
6. **Nachhilfe St. Gallen** - Top 3
7. **Nachhilfe Frauenfeld** - Top 3

### Andere Projekte
- **Ayana-Med Tattoo** - Rang #1 ("Areola Tätowierung", "Brustwarzen Tätowierung")
- **Polygon Software** - Top 3 (2023, eingestellt, >400k CHF Umsatz durch SEO)
- **Nagelstudio St. Gallen** - Seite 1 (2024)

### Featured Card
- **Freizeit-Vergleich-Schweiz.ch** - Eigenes Projekt, SEO in Arbeit
- Erstellt: 03.02.2026
- Spezielle Animationen: Rotating gradient border, floating particles, holographic overlay, scan line

## Technische Details

### Telefonnummer-Schutz
Die Telefonnummer ist per JavaScript obfuskiert:
```javascript
const p = ['\x30','\x37','\x36',...]; // Hex-encoded
```
- Bots sehen nur "Laden..." im HTML
- Echte User sehen die Nummer nach JS-Ausführung
- Links (tel:, wa.me) werden dynamisch gesetzt

### Performance-Optimierungen
- **Critical CSS** inline im `<head>`
- **Google Fonts** async laden (`media="print" onload`)
- **Stylesheet** mit preload
- **Canvas-Animationen** mit gecachten Dimensionen
- **Resize-Handler** debounced (100ms)
- **Star-Animationen** lazy-initialized nach Layout

### SEO
- Open Graph + Twitter Cards
- Structured Data (JSON-LD LocalBusiness)
- sitemap.xml mit allen Seiten
- robots.txt (og-template.html ausgeschlossen)
- Impressum/Datenschutz mit `noindex, follow`

## Externe Links

- **LinkedIn:** nofollow (3 Links)
- **Projekt-Links:** dofollow
- **Datenschutz-Links** (Google, GitHub, WhatsApp): nofollow

## Hosting

- **Platform:** GitHub Pages
- **Limitierung:** Cache-TTL max 10 Minuten (nicht änderbar)
- **Alternative:** Cloudflare davor für mehr Cache-Kontrolle

## Rechtliches

- Impressum nach Schweizer Recht
- Datenschutzerklärung DSG-konform
- Keine Cookies für Tracking
- Externe Dienste dokumentiert: Google Fonts, GitHub Pages, WhatsApp
