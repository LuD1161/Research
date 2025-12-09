.class public final Lw1/M;
.super LQ1/d;
.source "SourceFile"

# interfaces
.implements Lv1/f$a;
.implements Lv1/f$b;


# static fields
.field public static final j:Lv1/a$a;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Lv1/a$a;

.field public final f:Ljava/util/Set;

.field public final g:Lz1/e;

.field public h:LP1/e;

.field public i:Lw1/L;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LP1/d;->c:Lv1/a$a;

    sput-object v0, Lw1/M;->j:Lv1/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lz1/e;)V
    .locals 1

    sget-object v0, Lw1/M;->j:Lv1/a$a;

    invoke-direct {p0}, LQ1/d;-><init>()V

    iput-object p1, p0, Lw1/M;->c:Landroid/content/Context;

    iput-object p2, p0, Lw1/M;->d:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/e;

    iput-object p1, p0, Lw1/M;->g:Lz1/e;

    invoke-virtual {p3}, Lz1/e;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lw1/M;->f:Ljava/util/Set;

    iput-object v0, p0, Lw1/M;->e:Lv1/a$a;

    return-void
.end method


# virtual methods
.method public final I(Lw1/L;)V
    .locals 8

    iget-object v0, p0, Lw1/M;->h:LP1/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lv1/a$f;->n()V

    :cond_0
    iget-object v4, p0, Lw1/M;->g:Lz1/e;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lz1/e;->i(Ljava/lang/Integer;)V

    iget-object v1, p0, Lw1/M;->e:Lv1/a$a;

    iget-object v2, p0, Lw1/M;->c:Landroid/content/Context;

    iget-object v0, p0, Lw1/M;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v4}, Lz1/e;->g()LP1/a;

    move-result-object v5

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lv1/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lv1/f$a;Lv1/f$b;)Lv1/a$f;

    move-result-object v1

    check-cast v1, LP1/e;

    iput-object v1, p0, Lw1/M;->h:LP1/e;

    iput-object p1, p0, Lw1/M;->i:Lw1/L;

    iget-object p1, p0, Lw1/M;->f:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw1/M;->h:LP1/e;

    invoke-interface {p1}, LP1/e;->g()V

    return-void

    :cond_2
    :goto_0
    new-instance p1, Lw1/J;

    invoke-direct {p1, p0}, Lw1/J;-><init>(Lw1/M;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final J()V
    .locals 1

    iget-object v0, p0, Lw1/M;->h:LP1/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lv1/a$f;->n()V

    :cond_0
    return-void
.end method

.method public final synthetic K(LQ1/l;)V
    .locals 4

    invoke-virtual {p1}, LQ1/l;->d()Lu1/a;

    move-result-object v0

    invoke-virtual {v0}, Lu1/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LQ1/l;->e()Lz1/G;

    move-result-object p1

    invoke-static {p1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/G;

    invoke-virtual {p1}, Lz1/G;->e()Lu1/a;

    move-result-object v0

    invoke-virtual {v0}, Lu1/a;->i()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lw1/M;->i:Lw1/L;

    invoke-interface {p1, v0}, Lw1/L;->b(Lu1/a;)V

    iget-object p1, p0, Lw1/M;->h:LP1/e;

    invoke-interface {p1}, Lv1/a$f;->n()V

    return-void

    :cond_0
    iget-object v0, p0, Lw1/M;->i:Lw1/L;

    invoke-virtual {p1}, Lz1/G;->d()Lz1/j;

    move-result-object p1

    iget-object v1, p0, Lw1/M;->f:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lw1/L;->d(Lz1/j;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw1/M;->i:Lw1/L;

    invoke-interface {p1, v0}, Lw1/L;->b(Lu1/a;)V

    :goto_0
    iget-object p1, p0, Lw1/M;->h:LP1/e;

    invoke-interface {p1}, Lv1/a$f;->n()V

    return-void
.end method

.method public final synthetic L()Lw1/L;
    .locals 1

    iget-object v0, p0, Lw1/M;->i:Lw1/L;

    return-object v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lw1/M;->h:LP1/e;

    invoke-interface {p1, p0}, LP1/e;->d(LQ1/f;)V

    return-void
.end method

.method public final onConnectionFailed(Lu1/a;)V
    .locals 1

    iget-object v0, p0, Lw1/M;->i:Lw1/L;

    invoke-interface {v0, p1}, Lw1/L;->b(Lu1/a;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lw1/M;->i:Lw1/L;

    invoke-interface {v0, p1}, Lw1/L;->c(I)V

    return-void
.end method

.method public final w(LQ1/l;)V
    .locals 1

    new-instance v0, Lw1/K;

    invoke-direct {v0, p0, p1}, Lw1/K;-><init>(Lw1/M;LQ1/l;)V

    iget-object p1, p0, Lw1/M;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
