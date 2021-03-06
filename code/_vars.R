nodename <- Sys.info()["nodename"]

dir.nil.dmcc2.afni <- "/data/nil-bluearc/ccp-hcp/DMCC_ALL_BACKUPS/HCP_SUBJECTS_BACKUPS/fMRIPrep_AFNI_ANALYSIS/"

nodename <- Sys.info()["nodename"]

if (nodename == "ccplinux1") {
  
  dir.atlas <- "/data/nil-external/ccp/freund/atlases"
  dir.schaefer <- "/data/nil-bluearc/ccp-hcp/DMCC_ALL_BACKUPS/ATLASES/"
  
} else if (nodename == "CCP-FREUND") {
  ## mike freund's (i.e., ccp's) thinkpad
  ## reliant on box drive
  ## assumes box drive location at ./Users/mcf/Box
  
  dir.atlas <- "C:/local/atlases"
  dir.schaefer <- dir.atlas
  
}

n.cores <- detectCores()

tasks <- c("Axcpt", "Cuedts", "Stern", "Stroop")
glms <- c(
  "Cues_EVENTS_censored", 
  "CongruencyIncentive_EVENTS_censored",
  "ListLength_EVENTS_censored",
  "Congruency_EVENTS_censored"
)
sessions <- c("baseline", "proactive", "reactive")
sessions.short <- c("Bas", "Pro", "Rea")


n.trs <- c(
  Axcpt_baseline   = 1220,
  Axcpt_proactive  = 1220,
  Axcpt_reactive   = 1220,
  Cuedts_baseline  = 1300,
  Cuedts_proactive = 1300,
  Cuedts_reactive  = 1300,
  Stern_baseline   = 1200,
  Stern_proactive  = 1200,
  Stern_reactive   = 1200,
  Stroop_baseline  = 1080,
  Stroop_proactive = 1080,
  Stroop_reactive  = 1180
)

dmcc34 <- c(
  22, 77, 78, 86, 87, 91, 93, 99, 101, 103, 105, 107, 110, 127, 130, 139, 140,
  144, 148, 172, 175, 185, 189, 219, 301, 303, 306, 314, 340, 346, 347, 349, 350, 353
)

target.trs <- list(
  Axcpt = 4,
  Cuedts = 4,
  Stern = 6,
  Stroop = 2
)


contrs <- c(
  "HI_LO_conf",
  "InCon_Con",
  "RN_NN_LL5",
  "InCon_Con_bias"
)