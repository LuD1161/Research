.class public abstract Lw1/O;
.super Lw1/H;
.source "SourceFile"


# instance fields
.field public final b:LR1/g;


# direct methods
.method public constructor <init>(ILR1/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lw1/H;-><init>(I)V

    iput-object p2, p0, Lw1/O;->b:LR1/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lv1/b;

    invoke-direct {v0, p1}, Lv1/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lw1/O;->b:LR1/g;

    invoke-virtual {p1, v0}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lw1/O;->b:LR1/g;

    invoke-virtual {v0, p1}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final d(Lw1/w;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lw1/O;->h(Lw1/w;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lw1/O;->b:LR1/g;

    invoke-virtual {v0, p1}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lw1/T;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw1/O;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lw1/T;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw1/O;->a(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public abstract h(Lw1/w;)V
.end method
