.class public final LQ1/g;
.super LJ1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, LJ1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final K(LQ1/j;LQ1/f;)V
    .locals 1

    invoke-virtual {p0}, LJ1/a;->H()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, LJ1/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, LJ1/c;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, LJ1/a;->I(ILandroid/os/Parcel;)V

    return-void
.end method
