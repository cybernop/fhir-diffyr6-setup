RuleSet: AnnotationMS
// AUTO-DISABLED (SUSHI R6): * time MS
// AUTO-DISABLED (SUSHI R6): * text MS

// AUTO-DISABLED (SUSHI R6): RuleSet: CodingMS
// AUTO-DISABLED (SUSHI R6): * system MS
// AUTO-DISABLED (SUSHI R6): * version MS
// AUTO-DISABLED (SUSHI R6): * code MS
// AUTO-DISABLED (SUSHI R6): * display MS


// AUTO-DISABLED (SUSHI R6): RuleSet: CodeableConceptMS
// AUTO-DISABLED (SUSHI R6): * coding MS
  // AUTO-DISABLED (SUSHI R6): * insert CodingMS


// AUTO-DISABLED (SUSHI R6): RuleSet: IdentifierMS
// AUTO-DISABLED (SUSHI R6): * type MS
// AUTO-DISABLED (SUSHI R6): * type insert CodeableConceptMS
// AUTO-DISABLED (SUSHI R6): * system MS
// AUTO-DISABLED (SUSHI R6): * value MS


// AUTO-DISABLED (SUSHI R6): RuleSet: ReferenceMS
// AUTO-DISABLED (SUSHI R6): * reference MS
// AUTO-DISABLED (SUSHI R6): * identifier MS
// AUTO-DISABLED (SUSHI R6): * identifier insert IdentifierMS
// AUTO-DISABLED (SUSHI R6): * display MS


// AUTO-DISABLED (SUSHI R6): RuleSet: PeriodMS
// AUTO-DISABLED (SUSHI R6): * start MS
// AUTO-DISABLED (SUSHI R6): * end MS

// AUTO-DISABLED (SUSHI R6): RuleSet: TimingMS
// AUTO-DISABLED (SUSHI R6): * repeat MS
  // AUTO-DISABLED (SUSHI R6): * bounds[x] MS
  // AUTO-DISABLED (SUSHI R6): * boundsDuration MS
    // AUTO-DISABLED (SUSHI R6): * code MS
    // AUTO-DISABLED (SUSHI R6): * system MS
    // AUTO-DISABLED (SUSHI R6): * unit MS
    // AUTO-DISABLED (SUSHI R6): * value MS
  // AUTO-DISABLED (SUSHI R6): * frequency MS
  // AUTO-DISABLED (SUSHI R6): * period MS
  // AUTO-DISABLED (SUSHI R6): * periodUnit MS
  // AUTO-DISABLED (SUSHI R6): * dayOfWeek MS
  // AUTO-DISABLED (SUSHI R6): * timeOfDay MS
  // AUTO-DISABLED (SUSHI R6): * when MS

// AUTO-DISABLED (SUSHI R6): RuleSet: DosageDgMPMS
* text MS
// AUTO-DISABLED (SUSHI R6): * timing MS
  // AUTO-DISABLED (SUSHI R6): * insert TimingMS
// AUTO-DISABLED (SUSHI R6): * doseAndRate MS
  // AUTO-DISABLED (SUSHI R6): * dose[x] MS
  // AUTO-DISABLED (SUSHI R6): * doseQuantity MS
    // AUTO-DISABLED (SUSHI R6): * insert QuantityMS

RuleSet: RatioMS
// AUTO-DISABLED (SUSHI R6): * numerator MS
  // AUTO-DISABLED (SUSHI R6): * insert QuantityMS
// AUTO-DISABLED (SUSHI R6): * denominator MS
  // AUTO-DISABLED (SUSHI R6): * insert QuantityMS

// AUTO-DISABLED (SUSHI R6): RuleSet: QuantityMS
// AUTO-DISABLED (SUSHI R6): * value MS
// AUTO-DISABLED (SUSHI R6): * unit MS
// AUTO-DISABLED (SUSHI R6): * system MS
// AUTO-DISABLED (SUSHI R6): * code MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionMS
// AUTO-DISABLED (SUSHI R6): * url MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionExtensionMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionMS
// AUTO-DISABLED (SUSHI R6): * extension MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionMS
// AUTO-DISABLED (SUSHI R6): * value[x] MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionBooleanMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueBoolean MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionStringMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueString MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionCodeMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueCode MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionCodingMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueCoding MS
  // AUTO-DISABLED (SUSHI R6): * insert CodingMS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionReferenceMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueReference MS
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionDateTimeMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueDateTime MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionAnnotationMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueAnnotation MS
  // AUTO-DISABLED (SUSHI R6): * insert AnnotationMS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionPeriodMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valuePeriod MS
  // AUTO-DISABLED (SUSHI R6): * insert PeriodMS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionMarkdownMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueMarkdown MS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionIdentifierMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueIdentifier MS
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS

// AUTO-DISABLED (SUSHI R6): RuleSet: ExtensionRatioMS
// AUTO-DISABLED (SUSHI R6): * insert ExtensionValueMS
// AUTO-DISABLED (SUSHI R6): * valueRatio MS
  // AUTO-DISABLED (SUSHI R6): * insert RatioMS
// AUTO-DISABLED (SUSHI R6): 