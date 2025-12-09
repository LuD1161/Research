.class public final LB1/a;
.super LJ1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-direct {p0, p1, v0}, LJ1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final K(Lz1/r;)V
    .locals 1

    invoke-virtual {p0}, LJ1/a;->H()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, LJ1/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, LJ1/a;->J(ILandroid/os/Parcel;)V

    return-void
.end method
