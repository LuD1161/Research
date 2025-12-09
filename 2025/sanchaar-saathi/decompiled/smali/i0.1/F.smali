.class public final synthetic Li0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/a;


# instance fields
.field public final synthetic a:Li0/I;


# direct methods
.method public synthetic constructor <init>(Li0/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/F;->a:Li0/I;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li0/F;->a:Li0/I;

    check-cast p1, LG/f;

    invoke-static {v0, p1}, Li0/I;->d(Li0/I;LG/f;)V

    return-void
.end method
