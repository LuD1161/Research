.class public final synthetic LK0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/a;


# instance fields
.field public final synthetic a:LF3/r;


# direct methods
.method public synthetic constructor <init>(LF3/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/h;->a:LF3/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LK0/h;->a:LF3/r;

    check-cast p1, LK0/j;

    invoke-static {v0, p1}, LK0/i$a;->s(LF3/r;LK0/j;)V

    return-void
.end method
