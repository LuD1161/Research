.class public final LD3/y0;
.super LD3/F0;
.source "SourceFile"


# instance fields
.field public final h:Ll3/e;


# direct methods
.method public constructor <init>(Ll3/i;Lu3/p;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LD3/F0;-><init>(Ll3/i;Z)V

    invoke-static {p2, p0, p0}, Lm3/b;->a(Lu3/p;Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    iput-object p1, p0, LD3/y0;->h:Ll3/e;

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 1

    iget-object v0, p0, LD3/y0;->h:Ll3/e;

    invoke-static {v0, p0}, LJ3/a;->b(Ll3/e;Ll3/e;)V

    return-void
.end method
