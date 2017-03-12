{-|
Module      : Expr
Description : Expressions
Copyright   : (c) Daniel Selsam, 2016
License     : GPL-3
Maintainer  : daniel.selsam@gmail.com

API for expressions
-}
module Kernel.Expr (
  Expr(..)
  , LocalData(LocalData), VarData, SortData, ConstantData(ConstantData), BindingData, AppData, LetData
  , BinderInfo(..)
  , mkVar, mkLocal, mkLocalDefault, mkLocalData, mkLocalDataDefault, mkConstant, mkSort
  , mkLambda, mkLambdaDefault, mkPi, mkPiDefault, mkArrow, mkLet
  , mkApp, mkAppSeq
  , varIdx
  , sortLevel
  , localName, localType
  , constName, constLevels
  , bindingName, bindingDomain, bindingBody, bindingInfo
  , letName, letType, letVal, letBody
  , appFn, appArg, getOperator, getAppArgs, getAppOpArgs, getAppRevArgs, getAppOpRevArgs, mkRevAppSeq
  , exprHasLocal, exprHasLevelParam, hasFreeVars, closed
  , abstractPi, abstractPiSeq, abstractLambda, abstractLambdaSeq
  , instantiate, instantiateSeq, instantiateLevelParams
  , findInExpr
  , isConstant, maybeConstant
  , innerBodyOfLambda
  , mkProp
  ) where
import Kernel.Expr.Internal
