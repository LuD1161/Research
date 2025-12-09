.class public abstract Lq2/k;
.super Lq2/h;
.source "SourceFile"

# interfaces
.implements Lq2/l;


# direct methods
.method public static I(Landroid/os/IBinder;)Lq2/l;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lq2/l;

    if-eqz v1, :cond_1

    check-cast v0, Lq2/l;

    return-object v0

    :cond_1
    new-instance v0, Lq2/j;

    invoke-direct {v0, p0}, Lq2/j;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
