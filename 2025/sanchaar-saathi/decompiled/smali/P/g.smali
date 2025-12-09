.class public abstract LP/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP/g$b;,
        LP/g$a;,
        LP/g$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;LP/e;IZILandroid/os/Handler;LP/g$c;)Landroid/graphics/Typeface;
    .locals 1

    new-instance v0, LP/a;

    invoke-direct {v0, p6, p5}, LP/a;-><init>(LP/g$c;Landroid/os/Handler;)V

    if-eqz p3, :cond_0

    invoke-static {p0, p1, v0, p2, p4}, LP/f;->e(Landroid/content/Context;LP/e;LP/a;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, LP/f;->d(Landroid/content/Context;LP/e;ILjava/util/concurrent/Executor;LP/a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
