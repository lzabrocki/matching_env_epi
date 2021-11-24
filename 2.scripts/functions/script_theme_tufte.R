theme_tufte <- function() {
  # assign font family up front
  font <- "Roboto Condensed"
  
  #replace elements we want to change
  theme_bw() %+replace%
    
    theme(
      # panel borders
      panel.border = element_blank(),
      #grid elements
      panel.grid.major.y = element_blank(),
      panel.grid.minor.y = element_blank(),
      panel.grid.minor.x = element_blank(),
      panel.grid.major.x = element_blank(),
      # titles parameters
      plot.title = element_text(
        hjust = 0,
        family = font,
        size = 14,
        face = "bold",
        margin = ggplot2::margin(b = 0.2, unit = "cm")
      ),
      plot.subtitle = element_text(
        hjust = 0,
        family = font,
        size = 12
      ),
      # axis titles parameters
      axis.title.x = ggplot2::element_text(
        family = font,
        hjust = 1,
        size = 12,
        margin = margin(t = 0.2, unit = "cm")
      ),
      axis.title.y = ggplot2::element_text(
        family = font,
        hjust = 1,
        size = 12,
        angle = 90,
        margin = margin(r = 0.2, unit = "cm")
      ),
      # axis texts
      axis.text.x = element_text(
        family = font,
        color = "black",
        size = 8,
        margin = margin(t = 0.2, unit = "cm")
      ),
      axis.text.y = element_text(
        family = font,
        color = "black",
        size = 8,
        hjust=1,
        margin = margin(r = 0.2, unit = "cm")
      ),
      # axis ticks
      axis.ticks.x = element_line(size = 0.1, color = "black"),
      axis.ticks.y = element_line(size = 0.1, color = "black"),
      axis.ticks.length = unit(0.15, "cm"),
      # facet texts
      strip.background = element_blank(),
      strip.text.x = element_text(
        family = font,
        hjust = 0,
        size = 12
      ),
      strip.text.y = element_text(
        family = font,
        hjust = 0,
        size = 12
      ),
      # legend parameters
      legend.position = "top",
      legend.justification = "left",
      legend.direction = "horizontal",
      legend.title = element_text(
        family = font,
        size = 12,
        face = "bold"
      ),
      legend.text = element_text(family = font, size = 12)
    )
}

