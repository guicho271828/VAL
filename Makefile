# This file was automatically generated by makemake.
# Do not edit it directly!
# Any changes you make will be silently overwritten.

.PHONY : test

# Edit this file to define constants and custom build targets.
# Please refer to the makemake documentation for more information.
#
# To compile multiple versions of a program or library, please study
#     http://www.its.caltech.edu/~jafl/jcc/multi_version.html

# Useful directories

MYCODEDIR := include

# Directories to search for header files

SEARCHDIRS := -I${MYCODEDIR}

# makemake variables

DEPENDFLAGS := -g -Wall ${SEARCHDIRS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS =

# C compiler

CC     ?= gcc
CFLAGS  = ${DEPENDFLAGS}

%.o : %.c
	${CC} ${CPPFLAGS} ${CFLAGS} -c $< -o $@

# C++ compiler

CXX      ?= g++
CXXFLAGS  = ${DEPENDFLAGS} -ansi -Wall

# C/C++/Eiffel/FORTRAN linker

LINKER    := $(CXX) -g
LDFLAGS    = 
LOADLIBES := 

# LEX generator
LEX	?= flex
YACC	?= bison

%.o : %.cc
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $< -o $@

%.o : %.C
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $< -o $@

%.o : %.cpp
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $< -o $@

%.o : %.cxx
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $< -o $@

%.cpp : %.yacc
	${YACC} -o $@ $<

%.lcc : %.lex
	${LEX} -+ -o $@ $<

# validate

validate :: src/pddl+.o src/ptree.o src/Action.o src/Proposition.o src/FuncExp.o src/typecheck.o src/main.o src/Validator.o src/RepairAdvice.o src/LaTeXSupport.o src/State.o src/Plan.o src/Ownership.o src/Environment.o src/Polynomial.o src/DebugWriteController.o src/Utils.o src/TrajectoryConstraints.o src/RobustAnalyse.o src/random.o src/Events.o src/PrettyPrinter.o
  ifeq (${suffix validate}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix validate}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# parser

parser :: src/pddl+.o src/ptree.o src/parse.o src/DebugWriteController.o
  ifeq (${suffix parser}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix parser}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# analyse

analyse :: src/pddl+.o src/ptree.o src/Analysis.o src/DebugWriteController.o
  ifeq (${suffix analyse}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix analyse}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# tan

tan :: src/pddl+.o src/ptree.o src/TypedAnalysis.o src/TypedAnalyser.o src/DebugWriteController.o src/typecheck.o src/FuncAnalysis.o
  ifeq (${suffix tan}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix tan}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# tim

tim :: src/pddl+.o src/ptree.o src/TypedAnalyser.o src/DebugWriteController.o src/typecheck.o src/TimSupport.o src/TIM.o src/FuncAnalysis.o src/TIMMain.o src/SimpleEval.o src/instantiation.o
  ifeq (${suffix tim}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix tim}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# tofn

tofn :: src/pddl+.o src/ptree.o src/TypedAnalyser.o src/DebugWriteController.o src/typecheck.o src/TimSupport.o src/TIM.o src/FuncAnalysis.o src/ToFunction.o src/SimpleEval.o src/FastEnvironment.o src/instantiation.o src/SASActions.o src/ToFnMain.o
  ifeq (${suffix tofn}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix tofn}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# instantiate

instantiate :: src/pddl+.o src/ptree.o src/SimpleEval.o src/FastEnvironment.o src/instantiation.o src/instantiationMain.o src/DebugWriteController.o src/typecheck.o src/TypedAnalyser.o src/FuncAnalysis.o src/TIM.o src/TimSupport.o
  ifeq (${suffix instantiate}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix instantiate}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# libInst.a

libInst.a :: src/pddl+.o src/ptree.o src/SimpleEval.o src/FastEnvironment.o src/instantiation.o src/DebugWriteController.o src/typecheck.o src/TypedAnalyser.o src/FuncAnalysis.o src/TIM.o src/TimSupport.o src/TypeStripWC.o src/TypeStrip.o
  ifeq (${suffix libInst.a}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix libInst.a}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# typestrip

typestrip :: src/pddl+.o src/ptree.o src/TypeStrip.o src/TypeStripWC.o src/typecheck.o src/DebugWriteController.o
  ifeq (${suffix typestrip}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix typestrip}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# pddl2lpgp

pddl2lpgp :: src/pddl+.o src/ptree.o src/LPGPTranslator.o src/LPGP.o src/DebugWriteController.o src/Utils.o
  ifeq (${suffix pddl2lpgp}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix pddl2lpgp}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# dyna

dyna :: src/pddl+.o src/ptree.o src/DYNATranslator.o src/DYNA.o src/DebugWriteController.o src/Utils.o
  ifeq (${suffix dyna}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix dyna}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# relax

relax :: src/pddl+.o src/ptree.o src/RelaxTranslator.o src/Relax.o src/DebugWriteController.o src/Utils.o
  ifeq (${suffix relax}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix relax}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# dynaplan

dynaplan :: src/pddl+.o src/ptree.o src/SimpleEval.o src/FastEnvironment.o src/instantiation.o src/dynaMain.o src/DebugWriteController.o src/typecheck.o src/TypedAnalyser.o src/FuncAnalysis.o src/TIM.o src/TimSupport.o src/graphconstruct.o src/SearchSpace.o src/PartialPlan.o src/Plan.o src/State.o src/Validator.o src/RepairAdvice.o src/LaTeXSupport.o src/Action.o src/Proposition.o src/FuncExp.o src/Ownership.o src/Environment.o src/Polynomial.o src/DebugWriteController.o src/Utils.o src/TrajectoryConstraints.o src/InstPropLinker.o src/Evaluator.o src/RobustAnalyse.o src/random.o src/Events.o src/PrettyPrinter.o
  ifeq (${suffix dynaplan}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix dynaplan}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# hww

hww :: src/pddl+.o src/ptree.o src/TypedAnalyser.o src/DebugWriteController.o src/typecheck.o src/TimSupport.o src/TIM.o src/FuncAnalysis.o src/HowWhatWhenMain.o src/HowAnalyser.o
  ifeq (${suffix hww}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix hww}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# pinguplan

pinguplan :: src/pddl+.o src/ptree.o src/TypedAnalyser.o src/DebugWriteController.o src/typecheck.o src/TimSupport.o src/TIM.o src/FuncAnalysis.o src/PingusTranslator.o src/PinguPlanGenerator.o
  ifeq (${suffix pinguplan}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix pinguplan}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# planrec

planrec :: src/pddl+.o src/ptree.o src/Action.o src/Proposition.o src/FuncExp.o src/typecheck.o src/PlanRec.o src/Validator.o src/RepairAdvice.o src/LaTeXSupport.o src/State.o src/Plan.o src/Ownership.o src/Environment.o src/Polynomial.o src/DebugWriteController.o src/Utils.o src/TrajectoryConstraints.o src/RobustAnalyse.o src/random.o src/Events.o src/PrettyPrinter.o src/TypedAnalyser.o src/TimSupport.o src/TIM.o src/FuncAnalysis.o src/SimpleEval.o src/instantiation.o src/CausalGraph.o src/ToFunction.o src/SASActions.o
  ifeq (${suffix planrec}, .a)
	@${RM} $@
	${AR} crs $@ ${filter-out %.a %.so, $^}
  else
  ifeq (${suffix planrec}, .so)
	${LINKER} -shared ${LDFLAGS} -o $@ ${filter-out %.a %.so, $^} ${LOADLIBES}
  else
	${LINKER} ${LDFLAGS} -o $@ ${filter-out %.so, $^} ${LOADLIBES}
  endif
  endif

# list of all targets

MM_ALL_TARGETS := validate parser analyse tan tim tofn instantiate libInst.a typestrip pddl2lpgp dyna relax dynaplan hww pinguplan planrec

# target for making everything

.PHONY : all
all:: ${MM_ALL_TARGETS}

# target for removing all object files

.PHONY : tidy
tidy::
	@${RM} core src/Action.o src/Analysis.o src/CausalGraph.o src/DYNA.o src/DYNATranslator.o src/DebugWriteController.o src/Environment.o src/Evaluator.o src/Events.o src/FastEnvironment.o src/FuncAnalysis.o src/FuncExp.o src/HowAnalyser.o src/HowWhatWhenMain.o src/InstPropLinker.o src/LPGP.o src/LPGPTranslator.o src/LaTeXSupport.o src/Ownership.o src/PartialPlan.o src/PinguPlanGenerator.o src/PingusTranslator.o src/Plan.o src/PlanRec.o src/Polynomial.o src/PrettyPrinter.o src/Proposition.o src/Relax.o src/RelaxTranslator.o src/RepairAdvice.o src/RobustAnalyse.o src/SASActions.o src/SearchSpace.o src/SimpleEval.o src/State.o src/TIM.o src/TIMMain.o src/TimSupport.o src/ToFnMain.o src/ToFunction.o src/TrajectoryConstraints.o src/TypeStrip.o src/TypeStripWC.o src/TypedAnalyser.o src/TypedAnalysis.o src/Utils.o src/Validator.o src/dynaMain.o src/graphconstruct.o src/instantiation.o src/instantiationMain.o src/main.o src/parse.o src/pddl+.o src/ptree.o src/random.o src/typecheck.o

# target for removing all object files

.PHONY : clean
clean:: tidy
	@${RM} ${MM_ALL_TARGETS}

# list of all source files

MM_ALL_SOURCES := src/Action.cpp src/Analysis.cpp src/CausalGraph.cpp src/DYNA.cpp src/DYNATranslator.cpp src/DebugWriteController.cpp src/Environment.cpp src/Evaluator.cpp src/Events.cpp src/FastEnvironment.cpp src/FuncAnalysis.cpp src/FuncExp.cpp src/HowAnalyser.cpp src/HowWhatWhenMain.cpp src/InstPropLinker.cpp src/LPGP.cpp src/LPGPTranslator.cpp src/LaTeXSupport.cpp src/Ownership.cpp src/PartialPlan.cpp src/PinguPlanGenerator.cpp src/PingusTranslator.cpp src/Plan.cpp src/PlanRec.cpp src/Polynomial.cpp src/PrettyPrinter.cpp src/Proposition.cpp src/Relax.cpp src/RelaxTranslator.cpp src/RepairAdvice.cpp src/RobustAnalyse.cpp src/SASActions.cpp src/SearchSpace.cpp src/SimpleEval.cpp src/State.cpp src/TIM.cpp src/TIMMain.cpp src/TimSupport.cpp src/ToFnMain.cpp src/ToFunction.cpp src/TrajectoryConstraints.cpp src/TypeStrip.cpp src/TypeStripWC.cpp src/TypedAnalyser.cpp src/TypedAnalysis.cpp src/Utils.cpp src/Validator.cpp src/dynaMain.cpp src/graphconstruct.cpp src/instantiation.cpp src/instantiationMain.cpp src/main.cpp src/parse.cpp src/ptree.cpp src/random.cpp src/typecheck.cpp

# target for checking a source file

CHECKSYNTAXFILE := ${basename ${filter %${CHECKSTRING}, ${MM_ALL_SOURCES}}}

.PHONY : checksyntax
checksyntax:
  ifneq (${CHECKSYNTAXFILE},)
	@${MAKE} ${addsuffix .o, ${CHECKSYNTAXFILE}}
  else
	@echo No target to make ${CHECKSTRING}
  endif


# target for touching appropriate source files

.PHONY : touch
touch::
	@list=`grep -l ${TOUCHSTRING} ${MM_ALL_SOURCES}`; \
     for file in $$list; do { echo $$file; touch $$file; } done
ifdef TOUCHPATHS
	@for path in ${TOUCHPATHS}; do \
     ( if cd $$path; then ${MAKE} TOUCHSTRING=${TOUCHSTRING} touch; fi ) \
     done
endif


# target for calculating dependencies (MAKEMAKE, JDEPEND_INPUT_FILE)

.PHONY : jdepend
jdepend:
	@echo src/Action.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Action.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Analysis.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Analysis.o >> ${JDEPEND_INPUT_FILE}
	@echo src/CausalGraph.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/CausalGraph.o >> ${JDEPEND_INPUT_FILE}
	@echo src/DYNA.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/DYNA.o >> ${JDEPEND_INPUT_FILE}
	@echo src/DYNATranslator.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/DYNATranslator.o >> ${JDEPEND_INPUT_FILE}
	@echo src/DebugWriteController.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/DebugWriteController.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Environment.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Environment.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Evaluator.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Evaluator.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Events.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Events.o >> ${JDEPEND_INPUT_FILE}
	@echo src/FastEnvironment.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/FastEnvironment.o >> ${JDEPEND_INPUT_FILE}
	@echo src/FuncAnalysis.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/FuncAnalysis.o >> ${JDEPEND_INPUT_FILE}
	@echo src/FuncExp.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/FuncExp.o >> ${JDEPEND_INPUT_FILE}
	@echo src/HowAnalyser.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/HowAnalyser.o >> ${JDEPEND_INPUT_FILE}
	@echo src/HowWhatWhenMain.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/HowWhatWhenMain.o >> ${JDEPEND_INPUT_FILE}
	@echo src/InstPropLinker.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/InstPropLinker.o >> ${JDEPEND_INPUT_FILE}
	@echo src/LPGP.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/LPGP.o >> ${JDEPEND_INPUT_FILE}
	@echo src/LPGPTranslator.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/LPGPTranslator.o >> ${JDEPEND_INPUT_FILE}
	@echo src/LaTeXSupport.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/LaTeXSupport.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Ownership.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Ownership.o >> ${JDEPEND_INPUT_FILE}
	@echo src/PartialPlan.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/PartialPlan.o >> ${JDEPEND_INPUT_FILE}
	@echo src/PinguPlanGenerator.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/PinguPlanGenerator.o >> ${JDEPEND_INPUT_FILE}
	@echo src/PingusTranslator.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/PingusTranslator.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Plan.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Plan.o >> ${JDEPEND_INPUT_FILE}
	@echo src/PlanRec.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/PlanRec.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Polynomial.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Polynomial.o >> ${JDEPEND_INPUT_FILE}
	@echo src/PrettyPrinter.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/PrettyPrinter.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Proposition.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Proposition.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Relax.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Relax.o >> ${JDEPEND_INPUT_FILE}
	@echo src/RelaxTranslator.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/RelaxTranslator.o >> ${JDEPEND_INPUT_FILE}
	@echo src/RepairAdvice.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/RepairAdvice.o >> ${JDEPEND_INPUT_FILE}
	@echo src/RobustAnalyse.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/RobustAnalyse.o >> ${JDEPEND_INPUT_FILE}
	@echo src/SASActions.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/SASActions.o >> ${JDEPEND_INPUT_FILE}
	@echo src/SearchSpace.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/SearchSpace.o >> ${JDEPEND_INPUT_FILE}
	@echo src/SimpleEval.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/SimpleEval.o >> ${JDEPEND_INPUT_FILE}
	@echo src/State.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/State.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TIM.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TIM.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TIMMain.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TIMMain.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TimSupport.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TimSupport.o >> ${JDEPEND_INPUT_FILE}
	@echo src/ToFnMain.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/ToFnMain.o >> ${JDEPEND_INPUT_FILE}
	@echo src/ToFunction.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/ToFunction.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TrajectoryConstraints.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TrajectoryConstraints.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TypeStrip.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TypeStrip.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TypeStripWC.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TypeStripWC.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TypedAnalyser.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TypedAnalyser.o >> ${JDEPEND_INPUT_FILE}
	@echo src/TypedAnalysis.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/TypedAnalysis.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Utils.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Utils.o >> ${JDEPEND_INPUT_FILE}
	@echo src/Validator.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/Validator.o >> ${JDEPEND_INPUT_FILE}
	@echo src/dynaMain.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/dynaMain.o >> ${JDEPEND_INPUT_FILE}
	@echo src/graphconstruct.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/graphconstruct.o >> ${JDEPEND_INPUT_FILE}
	@echo src/instantiation.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/instantiation.o >> ${JDEPEND_INPUT_FILE}
	@echo src/instantiationMain.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/instantiationMain.o >> ${JDEPEND_INPUT_FILE}
	@echo src/main.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/main.o >> ${JDEPEND_INPUT_FILE}
	@echo src/parse.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/parse.o >> ${JDEPEND_INPUT_FILE}
	@echo src/pddl+.o >> ${JDEPEND_INPUT_FILE}
	@echo src/ptree.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/ptree.o >> ${JDEPEND_INPUT_FILE}
	@echo src/random.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/random.o >> ${JDEPEND_INPUT_FILE}
	@echo src/typecheck.cpp >> ${JDEPEND_INPUT_FILE}
	@echo src/typecheck.o >> ${JDEPEND_INPUT_FILE}
	@${MAKEMAKE} --depend Makefile -- ${DEPENDFLAGS} -- ${JDEPEND_INPUT_FILE}

test: validate
	issue-21/run.sh
# issue-22/run.sh
	issue-34/run.sh

# DO NOT DELETE THIS LINE -- makemake depends on it.

src/Analysis.o:

src/DYNA.o:

src/LPGP.o:

src/PingusTranslator.o:

src/PlanRec.o:

src/Polynomial.o:

src/Relax.o:

src/TIM.o:

src/TimSupport.o:

src/TypeStrip.o:

src/TypedAnalysis.o:

src/Validator.o:

src/dynaMain.o:

src/instantiation.o:

src/instantiationMain.o:

src/main.o:

src/parse.o:

src/pddl+.o: src/pddl+.yacc src/pddl+.lcc
