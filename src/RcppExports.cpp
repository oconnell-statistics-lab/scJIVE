// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <RcppEigen.h>
#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// armaMatMult
SEXP armaMatMult(arma::mat A, arma::mat B);
RcppExport SEXP _scJIVE_armaMatMult(SEXP ASEXP, SEXP BSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat >::type A(ASEXP);
    Rcpp::traits::input_parameter< arma::mat >::type B(BSEXP);
    rcpp_result_gen = Rcpp::wrap(armaMatMult(A, B));
    return rcpp_result_gen;
END_RCPP
}
// eigenMatMult
SEXP eigenMatMult(Eigen::MatrixXd A, Eigen::MatrixXd B, int n_cores);
RcppExport SEXP _scJIVE_eigenMatMult(SEXP ASEXP, SEXP BSEXP, SEXP n_coresSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Eigen::MatrixXd >::type A(ASEXP);
    Rcpp::traits::input_parameter< Eigen::MatrixXd >::type B(BSEXP);
    Rcpp::traits::input_parameter< int >::type n_cores(n_coresSEXP);
    rcpp_result_gen = Rcpp::wrap(eigenMatMult(A, B, n_cores));
    return rcpp_result_gen;
END_RCPP
}
// eigenMapMatMult2
SEXP eigenMapMatMult2(const Eigen::Map<Eigen::MatrixXd> A, Eigen::Map<Eigen::MatrixXd> B, int n_cores);
RcppExport SEXP _scJIVE_eigenMapMatMult2(SEXP ASEXP, SEXP BSEXP, SEXP n_coresSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const Eigen::Map<Eigen::MatrixXd> >::type A(ASEXP);
    Rcpp::traits::input_parameter< Eigen::Map<Eigen::MatrixXd> >::type B(BSEXP);
    Rcpp::traits::input_parameter< int >::type n_cores(n_coresSEXP);
    rcpp_result_gen = Rcpp::wrap(eigenMapMatMult2(A, B, n_cores));
    return rcpp_result_gen;
END_RCPP
}
// eigenBDCSVD
SEXP eigenBDCSVD(const Eigen::Map<Eigen::MatrixXd> A, int n_cores);
RcppExport SEXP _scJIVE_eigenBDCSVD(SEXP ASEXP, SEXP n_coresSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const Eigen::Map<Eigen::MatrixXd> >::type A(ASEXP);
    Rcpp::traits::input_parameter< int >::type n_cores(n_coresSEXP);
    rcpp_result_gen = Rcpp::wrap(eigenBDCSVD(A, n_cores));
    return rcpp_result_gen;
END_RCPP
}
// eigenSingularValues
SEXP eigenSingularValues(const Eigen::Map<Eigen::MatrixXd> A, int n_cores);
RcppExport SEXP _scJIVE_eigenSingularValues(SEXP ASEXP, SEXP n_coresSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const Eigen::Map<Eigen::MatrixXd> >::type A(ASEXP);
    Rcpp::traits::input_parameter< int >::type n_cores(n_coresSEXP);
    rcpp_result_gen = Rcpp::wrap(eigenSingularValues(A, n_cores));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_scJIVE_armaMatMult", (DL_FUNC) &_scJIVE_armaMatMult, 2},
    {"_scJIVE_eigenMatMult", (DL_FUNC) &_scJIVE_eigenMatMult, 3},
    {"_scJIVE_eigenMapMatMult2", (DL_FUNC) &_scJIVE_eigenMapMatMult2, 3},
    {"_scJIVE_eigenBDCSVD", (DL_FUNC) &_scJIVE_eigenBDCSVD, 2},
    {"_scJIVE_eigenSingularValues", (DL_FUNC) &_scJIVE_eigenSingularValues, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_scJIVE(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
