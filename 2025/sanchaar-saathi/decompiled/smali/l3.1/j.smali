.class public final Ll3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Ll3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/j;

    invoke-direct {v0}, Ll3/j;-><init>()V

    sput-object v0, Ll3/j;->e:Ll3/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ll3/i$c;)Ll3/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Ll3/i$c;)Ll3/i$b;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ll3/i;)Ll3/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
