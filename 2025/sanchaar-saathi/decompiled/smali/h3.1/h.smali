.class public abstract Lh3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/h$a;,
        Lh3/h$b;
    }
.end annotation


# static fields
.field public static final e:Lh3/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh3/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh3/h$a;-><init>(Lv3/g;)V

    sput-object v0, Lh3/h;->e:Lh3/h$a;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, Lh3/h$b;

    if-eqz v0, :cond_0

    check-cast p0, Lh3/h$b;

    iget-object p0, p0, Lh3/h$b;->e:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lh3/h$b;

    return p0
.end method
