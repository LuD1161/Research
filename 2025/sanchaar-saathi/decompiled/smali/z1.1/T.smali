.class public final Lz1/T;
.super Lz1/I;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lz1/d;


# direct methods
.method public constructor <init>(Lz1/d;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz1/T;->h:Lz1/d;

    invoke-direct {p0, p1, p2, p4}, Lz1/I;-><init>(Lz1/d;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lz1/T;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 7

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lz1/T;->g:Landroid/os/IBinder;

    invoke-static {v2}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lz1/T;->h:Lz1/d;

    invoke-virtual {v3}, Lz1/d;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lz1/d;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x22

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lz1/T;->g:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Lz1/d;->r(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4, v0}, Lz1/d;->W(IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v3, v2, v4, v0}, Lz1/d;->W(IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lz1/d;->f0(Lu1/a;)V

    invoke-virtual {v3}, Lz1/d;->c0()Lz1/d$a;

    move-result-object v0

    invoke-virtual {v3}, Lz1/d;->w()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lz1/d;->c0()Lz1/d$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lz1/d$a;->onConnected(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final f(Lu1/a;)V
    .locals 2

    iget-object v0, p0, Lz1/T;->h:Lz1/d;

    invoke-virtual {v0}, Lz1/d;->d0()Lz1/d$b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lz1/d;->d0()Lz1/d$b;

    move-result-object v1

    invoke-interface {v1, p1}, Lz1/d$b;->onConnectionFailed(Lu1/a;)V

    :cond_0
    invoke-virtual {v0, p1}, Lz1/d;->K(Lu1/a;)V

    return-void
.end method
