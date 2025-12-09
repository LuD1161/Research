.class public final Lw1/Q;
.super Lw1/H;
.source "SourceFile"


# instance fields
.field public final b:Lw1/n;

.field public final c:LR1/g;

.field public final d:Lw1/l;


# direct methods
.method public constructor <init>(ILw1/n;LR1/g;Lw1/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lw1/H;-><init>(I)V

    iput-object p3, p0, Lw1/Q;->c:LR1/g;

    iput-object p2, p0, Lw1/Q;->b:Lw1/n;

    iput-object p4, p0, Lw1/Q;->d:Lw1/l;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    invoke-virtual {p2}, Lw1/n;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lw1/Q;->d:Lw1/l;

    iget-object v1, p0, Lw1/Q;->c:LR1/g;

    invoke-interface {v0, p1}, Lw1/l;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lw1/Q;->c:LR1/g;

    invoke-virtual {v0, p1}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lw1/o;Z)V
    .locals 1

    iget-object v0, p0, Lw1/Q;->c:LR1/g;

    invoke-virtual {p1, v0, p2}, Lw1/o;->b(LR1/g;Z)V

    return-void
.end method

.method public final d(Lw1/w;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lw1/Q;->b:Lw1/n;

    invoke-virtual {p1}, Lw1/w;->t()Lv1/a$f;

    move-result-object p1

    iget-object v1, p0, Lw1/Q;->c:LR1/g;

    invoke-virtual {v0, p1, v1}, Lw1/n;->b(Lv1/a$b;LR1/g;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    iget-object v0, p0, Lw1/Q;->c:LR1/g;

    invoke-virtual {v0, p1}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void

    :goto_1
    invoke-static {p1}, Lw1/T;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw1/Q;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p1
.end method

.method public final f(Lw1/w;)[Lu1/c;
    .locals 0

    iget-object p1, p0, Lw1/Q;->b:Lw1/n;

    invoke-virtual {p1}, Lw1/n;->d()[Lu1/c;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lw1/w;)Z
    .locals 0

    iget-object p1, p0, Lw1/Q;->b:Lw1/n;

    invoke-virtual {p1}, Lw1/n;->c()Z

    move-result p1

    return p1
.end method
