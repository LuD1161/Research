.class public final LI0/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI0/a$a;->o(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:LR/a;


# direct methods
.method public constructor <init>(LR/a;)V
    .locals 0

    iput-object p1, p0, LI0/a$a$a;->e:LR/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, LI0/a$a$a;->e:LR/a;

    invoke-interface {p2, p1}, LR/a;->accept(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
