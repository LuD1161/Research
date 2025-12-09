.class public abstract Ll3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$b;


# instance fields
.field public final e:Ll3/i$c;


# direct methods
.method public constructor <init>(Ll3/i$c;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/a;->e:Ll3/i$c;

    return-void
.end method


# virtual methods
.method public B(Ll3/i$c;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->c(Ll3/i$b;Ll3/i$c;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ll3/i$b$a;->a(Ll3/i$b;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ll3/i$c;)Ll3/i$b;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->b(Ll3/i$b;Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ll3/i$c;
    .locals 1

    iget-object v0, p0, Ll3/a;->e:Ll3/i$c;

    return-object v0
.end method

.method public h(Ll3/i;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->d(Ll3/i$b;Ll3/i;)Ll3/i;

    move-result-object p1

    return-object p1
.end method
