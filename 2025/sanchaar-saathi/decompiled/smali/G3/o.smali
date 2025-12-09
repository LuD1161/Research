.class public final LG3/o;
.super LG3/a;
.source "SourceFile"


# instance fields
.field public final e:Lu3/p;


# direct methods
.method public constructor <init>(Lu3/p;)V
    .locals 0

    invoke-direct {p0}, LG3/a;-><init>()V

    iput-object p1, p0, LG3/o;->e:Lu3/p;

    return-void
.end method


# virtual methods
.method public b(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LG3/o;->e:Lu3/p;

    invoke-interface {v0, p1, p2}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
