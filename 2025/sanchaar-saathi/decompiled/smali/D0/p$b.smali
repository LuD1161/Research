.class public LD0/p$b;
.super LD0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:LD0/p;


# direct methods
.method public constructor <init>(LD0/p;)V
    .locals 0

    invoke-direct {p0}, LD0/m;-><init>()V

    iput-object p1, p0, LD0/p$b;->a:LD0/p;

    return-void
.end method


# virtual methods
.method public a(LD0/l;)V
    .locals 1

    iget-object p1, p0, LD0/p$b;->a:LD0/p;

    iget-boolean v0, p1, LD0/p;->P:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, LD0/l;->f0()V

    iget-object p1, p0, LD0/p$b;->a:LD0/p;

    const/4 v0, 0x1

    iput-boolean v0, p1, LD0/p;->P:Z

    :cond_0
    return-void
.end method

.method public d(LD0/l;)V
    .locals 2

    iget-object v0, p0, LD0/p$b;->a:LD0/p;

    iget v1, v0, LD0/p;->O:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LD0/p;->O:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, LD0/p;->P:Z

    invoke-virtual {v0}, LD0/l;->u()V

    :cond_0
    invoke-virtual {p1, p0}, LD0/l;->U(LD0/l$f;)LD0/l;

    return-void
.end method
