.class public final synthetic Li1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/a$a;


# instance fields
.field public final synthetic a:LY2/j$d;


# direct methods
.method public synthetic constructor <init>(LY2/j$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/j;->a:LY2/j$d;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Li1/j;->a:LY2/j$d;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method
