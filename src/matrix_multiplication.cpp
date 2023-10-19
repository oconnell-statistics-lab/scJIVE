// [[Rcpp::depends(RcppArmadillo, RcppEigen)]]
// [[Rcpp::plugins(openmp)]]

#include <omp.h>
#include <RcppArmadillo.h>
#include <RcppEigen.h>

// [[Rcpp::export]]
SEXP armaMatMult(arma::mat A, arma::mat B){
  arma::mat C = A * B;
  
  return Rcpp::wrap(C);
}

// [[Rcpp::export]]
SEXP eigenMatMult(Eigen::MatrixXd A, 
                  Eigen::MatrixXd B, 
                  int n_cores){
  
  Eigen::setNbThreads(n_cores);
  //qDebug()  << Eigen::nbThreads( );
  Eigen::MatrixXd C = A * B;
  
  return Rcpp::wrap(C);
}

// [[Rcpp::export]]
SEXP eigenMapMatMult2(const Eigen::Map<Eigen::MatrixXd> A,
                      Eigen::Map<Eigen::MatrixXd> B, 
                      int n_cores){
  
  Eigen::setNbThreads(n_cores);
  Eigen::MatrixXd C = A * B;
  return Rcpp::wrap(C);
}

// [[Rcpp::export]]
SEXP eigenBDCSVD(const Eigen::Map<Eigen::MatrixXd> A, 
                 int n_cores){
  
  Eigen::setNbThreads(n_cores);
  Eigen::BDCSVD<Eigen::MatrixXd> svd(A, Eigen::ComputeThinU|Eigen::ComputeThinV);
  return Rcpp::List::create( Rcpp::Named("u")=svd.matrixU(),
                             Rcpp::Named("d")=svd.singularValues(),
                             Rcpp::Named("v")=svd.matrixV() );
}

// [[Rcpp::export]]
SEXP eigenSingularValues(const Eigen::Map<Eigen::MatrixXd> A, 
                         int n_cores){
  
  Eigen::setNbThreads(n_cores);
  Eigen::MatrixXd B = A.transpose() * A;
  Eigen::SelfAdjointEigenSolver<Eigen::MatrixXd> eigensolver(B);
  return Rcpp::wrap(eigensolver.eigenvalues());
}
