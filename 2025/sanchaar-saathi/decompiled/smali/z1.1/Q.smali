.class public final Lz1/Q;
.super Lz1/i0;
.source "SourceFile"


# instance fields
.field public c:Lz1/d;

.field public final d:I


# direct methods
.method public constructor <init>(Lz1/d;I)V
    .locals 0

    invoke-direct {p0}, Lz1/i0;-><init>()V

    iput-object p1, p0, Lz1/Q;->c:Lz1/d;

    iput p2, p0, Lz1/Q;->d:I

    return-void
.end method


# virtual methods
.method public final G(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lz1/Q;->c:Lz1/d;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lz1/Q;->c:Lz1/d;

    iget v1, p0, Lz1/Q;->d:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lz1/d;->M(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lz1/Q;->c:Lz1/d;

    return-void
.end method

.method public final n(ILandroid/os/IBinder;Lz1/V;)V
    .locals 2

    iget-object v0, p0, Lz1/Q;->c:Lz1/d;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p3}, Lz1/d;->U(Lz1/V;)V

    iget-object p3, p3, Lz1/V;->e:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Lz1/Q;->G(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final v(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
