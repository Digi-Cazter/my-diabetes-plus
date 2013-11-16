module DiabetesMath

  def cho_insulin_dose(cho,dispose)
    dose = cho / dispose
    dose.round
  end

  def hbs_correction_dose(blood_sugar,target_blood_sugar,correction_factor)
    dose = (blood_sugar - target_blood_sugar) / correction_factor
    dose.round
  end

  def total_daily_requirement(weight)
    dose = weight / 4
    dose.round
  end

  def basal_dose(tdi,percent)
    dose = tdi * (percent/100)
    dose.round
  end

  def cho_ratio(tdi)
    dose = 500 / tdi
    dose.round
  end

  def cho_correction_factor(tdi)
    factor = 1800 / tdi
    factor.round
  end

  def bolus_dose(cho_dose,hbs_dose)
    dose = cho_dose + hbs_dose
    dose
  end
end