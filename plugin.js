const noirVazirmatnTheme = {
  name: 'noir-vazirmatn',
  label: 'Noir — Vazirmatn',
  description: 'Dark neutral Hermes theme with Vazirmatn Persian typography',

  colors: {
    background: '#111214',
    foreground: '#F2F2F4',
    card: '#1A1B1E',
    cardForeground: '#F2F2F4',
    muted: '#202125',
    mutedForeground: '#B1B2B7',
    popover: '#202125',
    popoverForeground: '#F2F2F4',
    primary: '#5E9EFF',
    primaryForeground: '#FFFFFF',
    secondary: '#202125',
    secondaryForeground: '#F2F2F4',
    accent: '#25262A',
    accentForeground: '#F2F2F4',
    border: '#292A2E',
    input: '#36373C',
    ring: '#80B2FF',
    midground: '#5E9EFF',
    composerRing: '#80B2FF',
    destructive: '#FF6961',
    destructiveForeground: '#FFFFFF',
    sidebarBackground: '#161719',
    sidebarBorder: '#292A2E',
    userBubble: '#17243A',
    userBubbleBorder: '#263D60'
  },

  darkColors: {
    background: '#0E0F11',
    foreground: '#F2F2F4',
    card: '#161719',
    cardForeground: '#F2F2F4',
    muted: '#1A1B1E',
    mutedForeground: '#B1B2B7',
    popover: '#202125',
    popoverForeground: '#F2F2F4',
    primary: '#5E9EFF',
    primaryForeground: '#FFFFFF',
    secondary: '#1A1B1E',
    secondaryForeground: '#F2F2F4',
    accent: '#25262A',
    accentForeground: '#F2F2F4',
    border: '#292A2E',
    input: '#36373C',
    ring: '#80B2FF',
    midground: '#5E9EFF',
    composerRing: '#80B2FF',
    destructive: '#FF6961',
    destructiveForeground: '#FFFFFF',
    sidebarBackground: '#161719',
    sidebarBorder: '#292A2E',
    userBubble: '#17243A',
    userBubbleBorder: '#263D60'
  },

  typography: {
    fontSans: '"Vazirmatn", "Segoe UI", system-ui, -apple-system, BlinkMacSystemFont, sans-serif',
    fontMono: '"JetBrains Mono", "Cascadia Code", "Vazirmatn", ui-monospace, Consolas, monospace',
    fontUrl: 'https://fonts.googleapis.com/css2?family=Vazirmatn:wght@400;500;600;700&display=swap'
  }
}

export default {
  id: 'noir-vazirmatn',
  name: 'Noir — Vazirmatn',

  register(ctx) {
    ctx.register({
      id: 'noir-vazirmatn-theme',
      area: 'themes',
      data: noirVazirmatnTheme
    })
  }
}
