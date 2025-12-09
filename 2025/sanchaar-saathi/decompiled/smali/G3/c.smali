.class public abstract LG3/c;
.super LH3/e;
.source "SourceFile"


# instance fields
.field public final h:Lu3/p;


# direct methods
.method public constructor <init>(Lu3/p;Ll3/i;ILF3/a;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, LH3/e;-><init>(Ll3/i;ILF3/a;)V

    iput-object p1, p0, LG3/c;->h:Lu3/p;

    return-void
.end method

.method public static synthetic k(LG3/c;LF3/r;Ll3/e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LG3/c;->h:Lu3/p;

    invoke-interface {p0, p1, p2}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method


# virtual methods
.method public f(LF3/r;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LG3/c;->k(LG3/c;LF3/r;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LG3/c;->h:Lu3/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, LH3/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
