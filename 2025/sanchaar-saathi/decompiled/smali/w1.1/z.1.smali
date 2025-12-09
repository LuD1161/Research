.class public final Lw1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/d$c;
.implements Lw1/L;


# instance fields
.field public final a:Lv1/a$f;

.field public final b:Lw1/b;

.field public c:Lz1/j;

.field public d:Ljava/util/Set;

.field public e:Z

.field public final synthetic f:Lw1/e;


# direct methods
.method public constructor <init>(Lw1/e;Lv1/a$f;Lw1/b;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/z;->f:Lw1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lw1/z;->c:Lz1/j;

    iput-object p1, p0, Lw1/z;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw1/z;->e:Z

    iput-object p2, p0, Lw1/z;->a:Lv1/a$f;

    iput-object p3, p0, Lw1/z;->b:Lw1/b;

    return-void
.end method


# virtual methods
.method public final a(Lu1/a;)V
    .locals 1

    new-instance v0, Lw1/y;

    invoke-direct {v0, p0, p1}, Lw1/y;-><init>(Lw1/z;Lu1/a;)V

    iget-object p1, p0, Lw1/z;->f:Lw1/e;

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lu1/a;)V
    .locals 2

    iget-object v0, p0, Lw1/z;->f:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lw1/z;->b:Lw1/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lw1/w;->p(Lu1/a;)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lw1/z;->f:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lw1/z;->b:Lw1/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw1/w;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lu1/a;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, Lu1/a;-><init>(I)V

    invoke-virtual {v0, p1}, Lw1/w;->p(Lu1/a;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lw1/w;->onConnectionSuspended(I)V

    :cond_1
    return-void
.end method

.method public final d(Lz1/j;Ljava/util/Set;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lw1/z;->c:Lz1/j;

    iput-object p2, p0, Lw1/z;->d:Ljava/util/Set;

    invoke-virtual {p0}, Lw1/z;->i()V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lu1/a;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lu1/a;-><init>(I)V

    invoke-virtual {p0, p1}, Lw1/z;->b(Lu1/a;)V

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    invoke-virtual {p0}, Lw1/z;->i()V

    return-void
.end method

.method public final synthetic f()Lv1/a$f;
    .locals 1

    iget-object v0, p0, Lw1/z;->a:Lv1/a$f;

    return-object v0
.end method

.method public final synthetic g()Lw1/b;
    .locals 1

    iget-object v0, p0, Lw1/z;->b:Lw1/b;

    return-object v0
.end method

.method public final synthetic h(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw1/z;->e:Z

    return-void
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Lw1/z;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/z;->c:Lz1/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw1/z;->a:Lv1/a$f;

    iget-object v2, p0, Lw1/z;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lv1/a$f;->p(Lz1/j;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
