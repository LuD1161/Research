.class public abstract LD3/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD3/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(LD3/p0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, LD3/p0;->c(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(LD3/p0;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ll3/i$b$a;->a(Ll3/i$b;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(LD3/p0;Ll3/i$c;)Ll3/i$b;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->b(Ll3/i$b;Ll3/i$c;)Ll3/i$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LD3/p0;ZZLu3/l;ILjava/lang/Object;)LD3/W;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-interface {p0, p1, p2, p3}, LD3/p0;->w(ZZLu3/l;)LD3/W;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(LD3/p0;Ll3/i$c;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->c(Ll3/i$b;Ll3/i$c;)Ll3/i;

    move-result-object p0

    return-object p0
.end method

.method public static f(LD3/p0;Ll3/i;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->d(Ll3/i$b;Ll3/i;)Ll3/i;

    move-result-object p0

    return-object p0
.end method
