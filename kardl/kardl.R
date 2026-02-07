# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Estimation of linear and non-linear ARDL models Use kardl With (In) R Software
install.packages("kardl")
library("kardl")
# Estimation of linear and non-linear ARDL models Use kardl With (In) R Software
kardl = read.csv("https://raw.githubusercontent.com/timbulwidodostp/kardl/main/kardl/kardl.csv", sep = ";")
kardl_set(data = kardl)
MyFormula <- CPI ~ ER + PPI + asym(ER + PPI) + deterministic(covid) + trend
kardl_set(criterion = "BIC", differentAsymLag = TRUE, data = kardl)
kardl <- kardl(data = kardl, model = MyFormula, maxlag = 4, mode = "grid")
kardl

summary(kardl)

# Estimation of linear and non-linear ARDL models Use kardl With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished