.class public Ll1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public final synthetic e:Ll1/c;


# direct methods
.method public constructor <init>(Ll1/c;)V
    .locals 0

    iput-object p1, p0, Ll1/c$a;->e:Ll1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ll1/c$a;->a:Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ll1/c$a;->b:Ljava/lang/String;

    iput-object p2, p0, Ll1/c$a;->c:Ljava/lang/String;

    iput-object p3, p0, Ll1/c$a;->d:Ljava/lang/Object;

    return-void
.end method
