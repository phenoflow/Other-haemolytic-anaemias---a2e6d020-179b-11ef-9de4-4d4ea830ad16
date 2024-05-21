cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  other-haemolytic-anaemias---primary:
    run: other-haemolytic-anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  other-haemolytic-anaemias-haemolysis---primary:
    run: other-haemolytic-anaemias-haemolysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias---primary/output
  other-haemolytic-anaemias-haemoglobin---primary:
    run: other-haemolytic-anaemias-haemoglobin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-haemolysis---primary/output
  other-haemolytic-anaemias-coldtype---primary:
    run: other-haemolytic-anaemias-coldtype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-haemoglobin---primary/output
  other-haemolytic-anaemias-stomatocytosis---primary:
    run: other-haemolytic-anaemias-stomatocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-coldtype---primary/output
  external-other-haemolytic-anaemias---primary:
    run: external-other-haemolytic-anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-stomatocytosis---primary/output
  other-haemolytic-anaemias-nonautoimmune---primary:
    run: other-haemolytic-anaemias-nonautoimmune---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: external-other-haemolytic-anaemias---primary/output
  other-haemolytic-anaemias-favism---primary:
    run: other-haemolytic-anaemias-favism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-nonautoimmune---primary/output
  other-haemolytic-anaemias-spherocytosis---primary:
    run: other-haemolytic-anaemias-spherocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-favism---primary/output
  anaemia---primary:
    run: anaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-spherocytosis---primary/output
  other-haemolytic-anaemias-enzyme---primary:
    run: other-haemolytic-anaemias-enzyme---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: anaemia---primary/output
  perinatal-other-haemolytic-anaemias---primary:
    run: perinatal-other-haemolytic-anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-enzyme---primary/output
  hereditary-other-haemolytic-anaemias---primary:
    run: hereditary-other-haemolytic-anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: perinatal-other-haemolytic-anaemias---primary/output
  other-haemolytic-anaemias-dehydrogenase---primary:
    run: other-haemolytic-anaemias-dehydrogenase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hereditary-other-haemolytic-anaemias---primary/output
  primary-other-haemolytic-anaemias---primary:
    run: primary-other-haemolytic-anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-dehydrogenase---primary/output
  anaemias---primary:
    run: anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: primary-other-haemolytic-anaemias---primary/output
  other-haemolytic-anaemias-acquired---primary:
    run: other-haemolytic-anaemias-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: anaemias---primary/output
  other-haemolytic-anaemias-specified---primary:
    run: other-haemolytic-anaemias-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-acquired---primary/output
  other-haemolytic-anaemias-metabolism---primary:
    run: other-haemolytic-anaemias-metabolism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-specified---primary/output
  other-haemolytic-anaemias-jaundice---primary:
    run: other-haemolytic-anaemias-jaundice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-metabolism---primary/output
  other-haemolytic-anaemias-deficiency---primary:
    run: other-haemolytic-anaemias-deficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-jaundice---primary/output
  other-haemolytic-anaemias-druginduced---primary:
    run: other-haemolytic-anaemias-druginduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-deficiency---primary/output
  haemolyticuraemic-other-haemolytic-anaemias---primary:
    run: haemolyticuraemic-other-haemolytic-anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: other-haemolytic-anaemias-druginduced---primary/output
  possible-other-haemolytic-anaemias---primary:
    run: possible-other-haemolytic-anaemias---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: haemolyticuraemic-other-haemolytic-anaemias---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: possible-other-haemolytic-anaemias---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
