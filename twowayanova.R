cropdata <- read.csv("~/BITS/Assgnmnts/cropdata.csv")
View(cropdata)

# Plotting the data:

boxplot(cropdata$yield ~ cropdata$density,
        ylab = "Crop Yield (Bushels per Acre)",
        xlab = "Crop Density",
        main = "Yield Distribution by Density",
)

boxplot(cropdata$yield ~ cropdata$fertilizer,
        ylab = "Crop Yield (Bushels per Acre)",
        xlab = "Fertilizer Type",
        main = "Yield Distribution by Fertilizer"
        )

# Plotting interaction between density and fertilizer:

interaction.plot(cropdata$fertilizer, cropdata$density, cropdata$yield,
                 xlab = "Fertilizer Type",
                 ylab = "Crop Yield (Bushels per Acre)",
                 trace.label = "Planting density",
                 main = "Interaction Plot"
                 )

# Two-way ANOVA to analyse the dependence of
# yield on density and fertilizer

yieldANOVA <- aov(cropdata$yield ~ cropdata$density*cropdata$fertilizer)
anova(yieldANOVA)
