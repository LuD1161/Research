.class public abstract Ll3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$c;


# instance fields
.field public final e:Lu3/l;

.field public final f:Ll3/i$c;


# direct methods
.method public constructor <init>(Ll3/i$c;Lu3/l;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll3/b;->e:Lu3/l;

    instance-of p2, p1, Ll3/b;

    if-eqz p2, :cond_0

    check-cast p1, Ll3/b;

    iget-object p1, p1, Ll3/b;->f:Ll3/i$c;

    :cond_0
    iput-object p1, p0, Ll3/b;->f:Ll3/i$c;

    return-void
.end method


# virtual methods
.method public final a(Ll3/i$c;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Ll3/b;->f:Ll3/i$c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Ll3/i$b;)Ll3/i$b;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/b;->e:Lu3/l;

    invoke-interface {v0, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/i$b;

    return-object p1
.end method
