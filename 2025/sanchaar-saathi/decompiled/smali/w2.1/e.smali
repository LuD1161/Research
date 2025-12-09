.class public abstract Lw2/e;
.super Lw2/b;
.source "SourceFile"

# interfaces
.implements Lw2/f;


# direct methods
.method public static I(Landroid/os/IBinder;)Lw2/f;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lw2/f;

    if-eqz v1, :cond_1

    check-cast v0, Lw2/f;

    return-object v0

    :cond_1
    new-instance v0, Lw2/d;

    invoke-direct {v0, p0}, Lw2/d;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
