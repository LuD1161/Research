.class public final Lj3/d$f;
.super Lj3/d$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Lj3/d;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj3/d$d;-><init>(Lj3/d;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lj3/d$d;->c()V

    invoke-virtual {p0}, Lj3/d$d;->d()I

    move-result v0

    invoke-virtual {p0}, Lj3/d$d;->f()Lj3/d;

    move-result-object v1

    invoke-static {v1}, Lj3/d;->d(Lj3/d;)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lj3/d$d;->d()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lj3/d$d;->h(I)V

    invoke-virtual {p0, v0}, Lj3/d$d;->i(I)V

    invoke-virtual {p0}, Lj3/d$d;->f()Lj3/d;

    move-result-object v0

    invoke-static {v0}, Lj3/d;->g(Lj3/d;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lj3/d$d;->e()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lj3/d$d;->g()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
