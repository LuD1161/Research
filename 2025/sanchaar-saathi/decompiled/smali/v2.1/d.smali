.class public abstract Lv2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lv2/c;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    new-instance v0, Lv2/h;

    new-instance v1, Lv2/m;

    invoke-direct {v1, p0}, Lv2/m;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lv2/h;-><init>(Lv2/m;)V

    return-object v0
.end method
