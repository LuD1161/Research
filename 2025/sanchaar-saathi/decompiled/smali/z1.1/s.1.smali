.class public abstract Lz1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lz1/t;
    .locals 1

    sget-object v0, Lz1/u;->b:Lz1/u;

    invoke-static {p0, v0}, Lz1/s;->b(Landroid/content/Context;Lz1/u;)Lz1/t;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lz1/u;)Lz1/t;
    .locals 1

    new-instance v0, LB1/d;

    invoke-direct {v0, p0, p1}, LB1/d;-><init>(Landroid/content/Context;Lz1/u;)V

    return-object v0
.end method
