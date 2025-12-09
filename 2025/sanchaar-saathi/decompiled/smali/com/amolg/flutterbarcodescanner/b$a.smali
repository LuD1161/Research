.class public Lcom/amolg/flutterbarcodescanner/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amolg/flutterbarcodescanner/b;->e(LT1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LT1/a;


# direct methods
.method public constructor <init>(LT1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/b$a;->e:LT1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/amolg/flutterbarcodescanner/b;->s:LY2/c$b;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b$a;->e:LT1/a;

    iget-object v1, v1, LT1/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, LY2/c$b;->a(Ljava/lang/Object;)V

    return-void
.end method
