.class public final LB1/e;
.super Lz1/h;
.source "SourceFile"


# instance fields
.field public final K:Lz1/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Lz1/u;Lw1/d;Lw1/j;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lz1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILz1/e;Lw1/d;Lw1/j;)V

    iput-object p4, p0, LB1/e;->K:Lz1/u;

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method

.method public final synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LB1/a;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, LB1/a;

    goto :goto_0

    :cond_1
    new-instance v0, LB1/a;

    invoke-direct {v0, p1}, LB1/a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final u()[Lu1/c;
    .locals 1

    sget-object v0, LJ1/d;->b:[Lu1/c;

    return-object v0
.end method

.method public final z()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, LB1/e;->K:Lz1/u;

    invoke-virtual {v0}, Lz1/u;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
