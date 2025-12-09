.class public final synthetic Lq2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR1/b;


# instance fields
.field public final synthetic a:Lq2/D;

.field public final synthetic b:LR1/g;


# direct methods
.method public synthetic constructor <init>(Lq2/D;LR1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/u;->a:Lq2/D;

    iput-object p2, p0, Lq2/u;->b:LR1/g;

    return-void
.end method


# virtual methods
.method public final a(LR1/f;)V
    .locals 2

    iget-object v0, p0, Lq2/u;->a:Lq2/D;

    iget-object v1, p0, Lq2/u;->b:LR1/g;

    invoke-virtual {v0, v1, p1}, Lq2/D;->t(LR1/g;LR1/f;)V

    return-void
.end method
